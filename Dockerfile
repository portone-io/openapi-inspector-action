FROM eclipse-temurin:23.0.1_11-jre

COPY run.jar /run.jar

ENTRYPOINT ["java", "-jar", "/run.jar"]
