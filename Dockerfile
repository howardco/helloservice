FROM openjdk:8-jdk-alpine
RUN apk add --no-cache bash
RUN apk add --no-cache curl
VOLUME /tmp
COPY ./target/hello-service-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
