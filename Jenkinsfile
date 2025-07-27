pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'ls -l'
                    // Build custom WordPress image from sudo Dockerfile
                    sh 'sudo docker build -t wordpress-app .'
                }
            }
        }
        stage('Start Services') {
            steps {
                script {
                    // Start both WordPress and MySQL using sudo docker-compose
                    sh 'sudo docker-compose up -d'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Check if WordPress homepage is up
                    sh 'curl --retry 10 --retry-delay 5 http://localhost:8000'
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
                // Clean up containers after pipeline finishes
                sh 'sudo docker-compose down'
            }
        }
    }
}