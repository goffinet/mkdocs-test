pipeline {
  agent {
    docker {
      image 'squidfunk/mkdocs-material'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh '#pip install mkdocs-material'
      }
    }
    stage('Build') {
      steps {
        sh '''mkdocs build
'''
      }
    }
    stage('Test') {
      steps {
        sh 'ls -l site/'
      }
    }
    stage('Deliver') {
      steps {
        sh 'echo deliver'
      }
    }
  }
}