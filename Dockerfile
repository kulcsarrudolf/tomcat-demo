
# First stage: Use Maven with Java 8 to build the application
FROM maven:3.6.3-jdk-8 AS build

# Set the working directory in the Maven container
WORKDIR /app

# Copy the application files
COPY . /app

# Run Maven to build the WAR file and list target directory contents for verification
RUN mvn clean package && ls -l /app/target

# Second stage: Use Tomcat 8.5 with Java 8 to run the application
FROM tomcat:8.5-jdk8

# Copy the WAR file from the first stage to the Tomcat webapps directory as ROOT.war
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
