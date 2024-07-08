# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jre

# Set the working directory in the container
WORKDIR /test-app

# Copy the application JAR file to the container, all the necessary dependencies, configurations, and application code are bundled into a single JAR file.
COPY build/libs/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8081

# Spring Boot applications are typically run using the Java Virtual Machine (JVM). The command java -jar is used to execute JAR files with the JVM.
ENTRYPOINT ["java", "-jar", "app.jar"]
