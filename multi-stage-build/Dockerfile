FROM eclipse-temurin:21-jdk-alpine AS builder
WORKDIR /app
COPY . .
RUN ./gradlew build -x test

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/build/libs/notification-user-api.jar ./app.jar
EXPOSE 9000
ENTRYPOINT ["java", "-jar", "app.jar"]