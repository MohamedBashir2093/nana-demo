FROM eclipse-temurin:17-jre

WORKDIR /app

COPY . .

RUN ./gradlew build --no-daemon

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "build/libs/my-app-1.0-SNAPSHOT.jar"]