FROM openjdk:17
EXPOSE 8888
COPY /target/*.jar config-server.jar
ENTRYPOINT ["java","-jar","config-server.jar"]
