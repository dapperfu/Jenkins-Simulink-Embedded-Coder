pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        runMATLABCommand 'run(\'arduino_build\')'
      }
    }

    stage('Artifacts') {
      steps {
        archiveArtifacts(caseSensitive: true, fingerprint: true, artifacts: 'output.log')
      }
    }

  }
}