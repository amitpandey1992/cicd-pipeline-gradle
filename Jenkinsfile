pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'checkout in progress'
         sh 'git checkout -b cicd-pipeline-gradle --no-daemon'
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
}
