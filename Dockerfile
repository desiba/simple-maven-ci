FROM arm64v8/maven:3.6-openjdk-17-slim
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -B package --file pom.xml -DskipTests

FROM arm64v8/openjdk:17
COPY --from=build /workspace/target/apptest-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]
