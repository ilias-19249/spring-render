# Build stage
FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# Debug: List the contents of the target directory
RUN ls -l /app/target

# Final stage
FROM eclipse-temurin:17
WORKDIR /app
COPY --from=build /app/target/springrender-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]