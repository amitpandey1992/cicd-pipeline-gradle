pipeline {
agent any
 stages {
 stage ('checkout') {
   steps {
       echo 'CheckOut automation'
       sh 'git checkout cicd-pipeline-gradle'
       sh 'echo $ls -al'
      }
    } 
  stage ('build') {
   steps {
       echo 'Running Build automation'
       sh './gradlew build --no-daemon'
        archiveArtifacts artifacts:'dist/sampleapp.zip'       
      }
    } 
  }
}
