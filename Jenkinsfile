pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        echo 'checkout in progress'
         sh 'git checkout cicd-pipeline-gradle'
          sh 'echo $ls -al'
      }
                }
    stage('Build') {
      steps {
        echo 'Running Build Automation'
         sh './gradlew build --no-daemon'
         archiveArtifacts artifacts: 'dist/sampleapp.zip'
        }
      }
    }
}


