FROM arm64v8/openjdk:17

WORKDIR /app

COPY target/apptest-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
