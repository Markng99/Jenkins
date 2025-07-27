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
                    // Use full path to docker binary
                    sh '/usr/bin/docker build -t wordpress-app .'
                }
            }
        }
        stage('Start Services') {
            steps {
                script {
                    // Start both WordPress and MySQL using docker-compose
                    sh 'docker-compose up -d'
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
                sh 'docker-compose down'
            }
        }
    }
}