# WordPress Docker Application

This project sets up a WordPress application using Docker. It includes all necessary configurations to run WordPress along with a MySQL database.

## Project Structure

- **src/**: Contains the source code and specific documentation for the WordPress application.
- **docker-compose.yml**: Defines the services, networks, and volumes for the Docker application.
- **Dockerfile**: Instructions to build the Docker image for the WordPress application.
- **Jenkinsfile**: Defines the Jenkins pipeline for building and deploying the application.

## Getting Started

### Prerequisites

- Docker
- Docker Compose
- Jenkins (for CI/CD)

### Setup Instructions

1. Clone the repository:
   ```
   git clone <repository-url>
   cd wordpress-docker-app
   ```

2. Build and run the application:
   ```
   docker-compose up -d
   ```

3. Access the WordPress application at `http://localhost:8000`.

### Usage

- To stop the application, run:
  ```
  docker-compose down
  ```

- For more information on configuring WordPress, refer to the official [WordPress documentation](https://wordpress.org/support/).

### Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bugs.

### License

This project is licensed under the MIT License. See the LICENSE file for details.