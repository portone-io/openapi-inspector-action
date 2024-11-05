#!/bin/sh -l

java -jar /run.jar $1 $2 >> $GITHUB_STEP_SUMMARY
STATUS=$?

if [ $STATUS != 0 ]
then
    echo "::error::OpenAPI Validation Failed!"
    exit 1
fi
