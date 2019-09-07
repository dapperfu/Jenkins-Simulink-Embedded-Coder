pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat(script: 'build.bat', encoding: 'UTF-8', returnStatus: true, returnStdout: true)
      }
    }
  }
}