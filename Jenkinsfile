pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        runMATLABCommand 'run(\'arduino_build\')'
      }
    }

    stage('Artifact Management') {
      parallel {
        stage('Archive Binaries') {
          steps {
            archiveArtifacts(caseSensitive: true, fingerprint: true, artifacts: '*.elf, *.hex', allowEmptyArchive: true)
          }
        }

        stage('Archive Build Source') {
          steps {
            archiveArtifacts '*_ert_rtw/**/*'
          }
        }

      }
    }

  }
  environment {
    GEN_CODE_ONLY = 'off'
  }
}