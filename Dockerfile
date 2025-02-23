FROM maven:3.8.7-eclipse-temurin-17
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Package and run the application
RUN mvn clean package -DskipTests
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/app.jar"]
