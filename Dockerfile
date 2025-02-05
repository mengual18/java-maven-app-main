FROM openjdk:8-jre-alpine

EXPOSE 8090

COPY /target/java-maven-app-1.1.0-SNAPSHOT.jar /usr/app
WORKDIR /usr/app

ENTRYPOINT ["java",".jar","java-maven-app-1.1.0-SNAPSHOT.jar"]