# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre
# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-rest-validation-1.0.jar
COPY ${JAR_FILE} sureshbafirstapp.jar
ENTRYPOINT ["java","-jar","/sureshbafirstapp.jar"]
