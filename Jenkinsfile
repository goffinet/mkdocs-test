pipeline {
  agent {
    docker {
      image 'goffinet/mkdocs'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mkdocs build'
      }
    }
    stage('Test') {
      steps {
        sh 'ls -l site/'
      }
    }
    stage('Package') {
      steps {
        sh 'zip -r site.zip site/*'
      }
    }
  }
}