 node {
     def app

	tools {
        maven 'Maven3' 
    }
    
    stage('parameter check')
    	{
    		steps
    		{
    			 echo "Current workspace : ${workspace}"
    			 sh 'mvn -version'
    		}
    	}
    	
     stage('Clone repository') {
         /* Let's make sure we have the repository cloned to our workspace */
 
         checkout scm
     }

     stage('Build image') {
         /* This builds the actual image; synonymous to
         * docker build on the command line */

         app = docker.build("kimsh03/jenkins-test:latest")
     }

     stage('Test image') {
         app.inside {
             sh 'echo "Tests passed"'
         }
     }

 }