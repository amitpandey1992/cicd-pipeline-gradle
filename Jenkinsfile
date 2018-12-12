pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        echo 'checkout in progress'
         sh 'git checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'New', url: 'https://github.com/amitpandey1992/cicd-pipeline-gradle']]])'
          sh 'echo $ls -al'
        
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

