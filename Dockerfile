# Maven build container 
# Use Maven image with OpenJDK 11 as base image for building

FROM maven:3.8.5-openjdk-11 AS maven_build

# Copying the project files into the container
COPY pom.xml /tmp/
COPY src /tmp/src/

# Set working directory
WORKDIR /tmp/

# Run Maven package to build the project
RUN mvn package

# Pull base image
# Use Eclipse Temurin JDK 11 as base image
FROM eclipse-temurin:11

# Expose port 8080
EXPOSE 80

# Default command to run the application
CMD java -jar /data/hello-world-0.1.0.jar

# Copy hello-world JAR file from the Maven build container to the final image
COPY --from=maven_build /tmp/target/hello-world-0.1.0.jar /data/hello-world-0.1.0.jar
