pipeline {
    agent none
    def app
    def docker
    
    options { skipDefaultCheckout(true) }
    stages {
        stage('Build and Test') {
            agent {
                docker {
                    image 'maven:3-alpine'
                    args '-v /root/.m2:/root/.m2'
                }
            }
            options { skipDefaultCheckout(false) }
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Docker build') {
            agent any
            steps {
                /* sh 'docker build -t java-demo-image:latest .' */
                app = docker.build("kimsh03/java-demo-image")
            }
        }
        stage('Docker push') {
            agent any
            steps {
                docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
	             app.push("0.1")
	             app.push("latest")
         }
            }
        }
        /*
        stage('Docker run') {
            agent any
            steps {
                sh 'docker ps -f name=java-demo-container -q | xargs --no-run-if-empty docker container stop'
                sh 'docker container ls -a -fname=java-demo-container -q | xargs -r docker container rm'
                sh 'docker rmi $(docker images -f "dangling=true" -q)'
                sh 'docker run -d --name java-demo-container -p 9999:9999 java-demo-image:latest'
            }
        }
        */
    }
}