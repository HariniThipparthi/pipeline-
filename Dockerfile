# Use an OpenJDK image as the base
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the target folder to the container
COPY target/*.jar app.jar

# Expose the application port (if needed)
EXPOSE 8081

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
