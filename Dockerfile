# Run spring boot in Docker
FROM openjdk:11

COPY /target/*.jar facility.jar

ENV PORT 9003
EXPOSE $PORT

ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","facility.jar"]
