FROM openjdk:21
WORKDIR /app
COPY build/libs/notification-user-api.jar /app/notification-user-api.jar
EXPOSE 8081