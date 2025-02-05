FROM openjdk:8-jre-alpine

EXPOSE 8090

# Crear el directorio de trabajo antes de copiar el archivo
RUN mkdir -p /usr/app
COPY /target/java-maven-app-1.1.0-SNAPSHOT.jar /usr/app

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-maven-app-1.1.0-SNAPSHOT.jar"]
