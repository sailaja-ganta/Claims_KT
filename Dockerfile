# Run spring boot in Docker
FROM openjdk:11

COPY /target/*.jar customer.jar

ENV PORT 9002
EXPOSE $PORT

ENTRYPOINT ["java","-jar","customer.jar"]
