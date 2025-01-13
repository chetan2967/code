# Use a base image with Java installed 
FROM openjdk:17-jdk-alpine 

# Set the working directory inside the container 
WORKDIR /app 

# Copy the JAR file to the container 
COPY target/kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar /app/kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar  

# Expose the port your app runs on (optional) 
EXPOSE 8080 

# Command to run the JAR file 
CMD ["java", "-jar", "kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar"] 
