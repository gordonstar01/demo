FROM openjdk:8u212-jdk-alpine
COPY target/*.jar app.jar
EXPOSE  9999
ENTRYPOINT ["java","-Xmx400M","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--spring.profiles.active=docker"]
