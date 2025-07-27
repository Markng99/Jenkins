pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('wordpress-app', '.')
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Add commands to run tests here
                    echo 'Running tests...'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Add deployment commands here
                    echo 'Deploying application...'
                }
            }
        }
    }
}