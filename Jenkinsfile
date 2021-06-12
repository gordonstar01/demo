node {
    def app
    def docker
    
    options { skipDefaultCheckout(true) }

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
}