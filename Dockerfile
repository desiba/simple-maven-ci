FROM openjdk:17

WORKDIR /app

COPY target/apptest-0.0.1-SNAPSHOT.jar /app/app.jar

CMD ["java", "-jar", "app.jar"]
