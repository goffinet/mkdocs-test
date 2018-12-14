pipeline {
  agent {
    docker {
      image 'goffinet/mkdocs'
      args '-v /root/.ssh:/root/.ssh/'
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
    stage('Deliver') {
      steps {
        sh 'echo "Working on Delivery"'
      }
    }
  }
}