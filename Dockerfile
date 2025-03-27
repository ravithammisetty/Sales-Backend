# Use a lightweight Java image
FROM  openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy application JAR file into the container
COPY target/Ravisalesp-0.0.1-SNAPSHOT.jar Ravisalesp.jar


COPY src/main/resources/application.properties /app/config/application.properties

# Expose the application port
EXPOSE 9090

# Command to run the application
ENTRYPOINT ["java", "-jar", "Ravisalesp.jar", "--spring.config.location=file:/app/config/application.properties"]