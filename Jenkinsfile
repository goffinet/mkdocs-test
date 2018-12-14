pipeline {
  agent {
    docker {
      args '-v $WORKSPACE:/docs'
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
        sh '''cd /docs ; mkdocs build
'''
      }
    }
    stage('Test') {
      steps {
        sh 'ls -l _site/'
      }
    }
  }
}