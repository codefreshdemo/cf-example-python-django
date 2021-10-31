pipeline {
  environment {
    registry = "riteshk0398/cf-example-python-django"
    registryCredential = 'dockerhub'
  }
agent any
  stages {
    stage('Building image') {
      steps{
        sh "printenv"
        
        sh "docker build -t riteshk03/py-demo:$BUILD_ID-$BRANCH_NAME ." 
        //sh "docker run -dp 80:80 riteshk03/calculator:$BUILD_ID-$BRANCH_NAME"
        sh "docker push riteshk03/py-demo:$BUILD_ID-$BRANCH_NAME"
      }
    }
     stage('Creating Deployment-rk') {
      steps {
    
        sh  '''#!/bin/bash
                
                if [[ $GIT_BRANCH == "development-rk" ]]
                then
                    docker run -dp 8000:8000 riteshk03/py-demo:$BUILD_ID-$BRANCH_NAME
                elif [[ $GIT_BRANCH == "master" ]]
                then
                    docker run -dp 8001:8000 riteshk03/py-demo:$BUILD_ID-$BRANCH_NAME
                fi         
            '''
      }
    }
    stage('') {
      steps{
        sh '''
            
            docker ps            '''
      }
    }
    }
}


