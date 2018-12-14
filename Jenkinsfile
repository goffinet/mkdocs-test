pipeline {
  agent {
    docker {
      image 'python:2.7'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh 'pip install mkdocs-material'
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
        sh 'mkdocs serve & ; pid=$!'
        sh 'grep \'Powered by\' | curl -s http://127.0.0.1:3000'
      }
    }
    stage('Deliver') {
      steps {
        sh 'echo deliver'
      }
    }
  }
}