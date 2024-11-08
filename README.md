# HelloWorldApp

This is a simple Java web application that displays "Hello, World!" when accessed. It uses Java 8, Apache Tomcat 8.5, and Maven for building the project.

## Prerequisites

### With Docker

- [Docker](https://www.docker.com/) installed on your machine
- [Docker Compose](https://docs.docker.com/compose/) (optional, but recommended)

### Without Docker

- **Java 8**: Ensure Java 8 is installed and available in your system's PATH.
- **Apache Maven**: For building the project.
- **Apache Tomcat 8.5**: To deploy and run the application.

---

## Running with Docker

The project includes a `Dockerfile` and `docker-compose.yml` configuration to simplify running the application in a Docker container.

### Steps to Run

1. **Build and Start the Application**:
   Run the following command from the project root directory:

   ```bash
   docker-compose up --build
   ```

   This command will:

   - Use a Maven Docker image with Java 8 to build the application.
   - Deploy the built `.war` file to a Tomcat 8.5 container, making it accessible on port 8080.

2. **Access the Application**:
   Once the container is up, you can access the application at:
   ```
   http://localhost:8080/hello
   ```

### Environment

- **Java Version**: Java 8
- **Tomcat Version**: Apache Tomcat 8.5

---

## Running without Docker

If you prefer running the application without Docker, follow these steps:

### Steps to Run

1. **Clone the Project**:
   Ensure you have the project files on your machine.

2. **Build the Project**:
   Navigate to the project root directory and run:

   ```bash
   mvn clean package
   ```

   This will generate a `HelloWorldApp.war` file in the `target` directory.

3. **Deploy to Tomcat**:

   - Copy the `HelloWorldApp.war` file from the `target` directory.
   - Place the `.war` file in the `webapps` directory of your local Tomcat 8.5 installation.
   - Start Tomcat.

4. **Access the Application**:
   Once Tomcat is running, you can access the application at:
   ```
   http://localhost:8080/HelloWorldApp/hello
   ```

### Environment

- **Java Version**: Java 8
- **Tomcat Version**: Apache Tomcat 8.5

### Additional Notes

- Ensure that the JAVA_HOME environment variable is set to Java 8 if you have multiple Java versions installed.
- Make sure that the port 8080 is free on your machine to avoid conflicts.

---

## Project Structure

- `Dockerfile`: Defines the environment and steps for building and running the application in Docker.
- `docker-compose.yml`: Simplifies the Docker setup with Docker Compose.
- `src/main/java`: Contains the `HelloWorldServlet` Java class.
- `src/main/webapp`: Contains the `web.xml` configuration and any web resources (if added).

---

Enjoy using the HelloWorldApp!
