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
      }
    }
  }
}