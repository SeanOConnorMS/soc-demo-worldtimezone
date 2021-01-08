pipeline
{
 	agent any 
		stages {
   			stage('App Build') {
   				steps{
     				sh 'mvn clean install'
     				echo "Running ${env.BUILD_ID} on ${env.WORKSPACE}"
   				}
   			}
     
     		stage('MUnit Tests') {
     			steps{
      				sh 'mvn test'
      			}
     		}
          
     		stage('App Deploy - CloudHub') {
     			steps{
      				sh 'mvn package deploy -DmuleDeploy'
      			}
     		}
    	}
} 
  