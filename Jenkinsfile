pipeline {
    environment {
        registry = "kimsh03/jenkins_test"
        registryCredential = 'dockerhub'
    }
    agent any
    stages {
        stage('Build docker image') {
            steps {
                sh 'docker build -t $registry:latest .'
            }
        }
     }
}