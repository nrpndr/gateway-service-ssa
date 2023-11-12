FROM openjdk:17-alpine
MAINTAINER nrpndr
WORKDIR /app/gateway-service
EXPOSE 8080
ARG JAR_FILE=target/gateway-service.jar
COPY ${JAR_FILE} gateway-service.jar
ENTRYPOINT ["java","-jar","gateway-service.jar"]