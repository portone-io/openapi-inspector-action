FROM eclipse-temurin:23.0.1_11-jre

COPY run.jar /run.jar
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
