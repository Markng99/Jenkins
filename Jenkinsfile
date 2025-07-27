pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('wordpress-app', '.')
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    // Run the container in detached mode
                    dockerImage.run('-d -p 8080:80 --name wordpress-app')
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Example: Check if WordPress homepage is up
                    sh 'curl --retry 10 --retry-delay 5 http://localhost:8080'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying application...'
                    // Add deployment steps here if needed
                }
            }
        }
    }
    post {
        always {
            script {
                // Clean up the container after pipeline finishes
                sh 'docker rm -f wordpress-app || true'
            }
        }
    }
}