pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat(script: 'build.bat', encoding: 'UTF-8', returnStatus: true, returnStdout: true)
        bat 'matlab_launch.bat'
      }
    }
    stage('Artifacts') {
      steps {
        archiveArtifacts(caseSensitive: true, fingerprint: true, artifacts: 'output.log')
      }
    }
  }
}