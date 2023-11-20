FROM openjdk:11
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 80
ENTRYPOINT ["java","-jar","/app.jar"]