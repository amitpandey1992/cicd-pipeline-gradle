pipeline {
agent any
 stages {
 stage ('checkout') {
   steps {
       echo 'CheckOut automation'
       sh 'git checkout -b cicd-pipeline-gradle'
       sh 'echo $ls -al'
      }
    } 
  stage ('build') {
   steps {
       echo 'Running Build automation'
       sh './gradlew build --no-daemon'
        archiveArtifacts artifacts:'dist/sampleApp.zip'       
      }
    } 
  }
}
