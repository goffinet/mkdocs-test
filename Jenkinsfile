pipeline {
  agent {
    docker {
      image 'squidfunk/mkdocs-material'
      args '-v ${PWD}:/docs'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mkdocs build'
      }
    }
  }
}