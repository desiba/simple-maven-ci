FROM arm64v8/openjdk:17

COPY target/apptest-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]
