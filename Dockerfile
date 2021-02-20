FROM openjdk:11-jdk-oraclelinux7
ARG JAR_FILE=target/*.jar
EXPOSE 8080 8080
COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "java", "-jar", "/app.jar" ]