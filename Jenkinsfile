pipeline {
  agent {
    docker {
      image 'goffinet/mkdocs'
      args '-v /root/.ssh:/opt/.ssh/'
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
        sh '''scp 
-i /opt/.ssh/id_rsa
-o StrictHostKeyChecking=no 
-r site/* 
root@get.goffinet.org:/var/www/html/mkdocs-test/'''
      }
    }
  }
}