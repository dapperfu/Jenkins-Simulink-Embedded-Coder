pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            bat(script: 'build.bat', encoding: 'UTF-8', returnStatus: true, returnStdout: true)
          }
        }
        stage('') {
          steps {
            sh 'build.bat'
          }
        }
      }
    }
    stage('Artifacts') {
      steps {
        archiveArtifacts(caseSensitive: true, fingerprint: true, artifacts: 'output.log')
      }
    }
  }
}