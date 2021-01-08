pipeline
{
 	agent any 
		stages {
   			stage('App Build') {
   				steps{
     				echo "Running ${env.BUILD_ID} on ${env.WORKSPACE}"
     				echo "Step 1: App Build"
     				sh 'mvn clean install'
   				}
   			}
     
     		stage('MUnit Tests') {
     			steps{
     				echo "Step 2: MUnit Tests"
      				sh 'mvn test'
      			}
     		}
          
     		stage('App Deploy - CloudHub') {
     			steps{
     				echo "Step 3: App Deploy - CloudHub"
      				sh 'mvn package deploy -DmuleDeploy'
      			}
     		}
    	}
} 
  