pipeline
{
 	agent any 
		stages {
   			stage('App Build & Unit Test') {
   				steps{
     				echo "Running ${env.BUILD_ID} on ${env.WORKSPACE}"
     				echo "Step 1: Build"
     				sh 'mvn clean install'

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
  