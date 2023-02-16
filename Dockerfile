
# Run spring boot in Docker
FROM openjdk:11

COPY /target/*.jar claims.jar

ENV PORT 9001
EXPOSE $PORT

ENTRYPOINT ["java","-jar","claims.jar"]
