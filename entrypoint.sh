#!/bin/sh -l

java -jar /run.jar $1 $2 >> $GITHUB_STEP_SUMMARY
STATUS=$?

echo "---" >> $GITHUB_STEP_SUMMARY
echo "If you notice any incorrect errors or have suggestions for improvement, please [create an issue](https://github.com/portone-io/openapi-inspector/issues/new) to let us know!" >> $GITHUB_STEP_SUMMARY

if [ $STATUS != 0 ]
then
    echo "::error::OpenAPI Validation Failed!"
    exit 1
fi
