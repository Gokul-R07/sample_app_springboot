# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jre-slim

# Set the working directory in the container
WORKDIR /test-app

# Copy the application JAR file to the container
COPY build/libs/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8081

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
