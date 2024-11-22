pipeline {
  agent none
  stages {
    stage('Checkout') {
      steps {
        sh 'checkout scm'
      }
    }

    stage('Build') {
      steps {
        sh '                    docker.build("${IMAGE_NAME}:${BUILD_NUMBER}")'
      }
    }

    stage('Deploy') {
      steps {
        sh '''docker run -d --name ${IMAGE_NAME} -p ${PORT}:${PORT} ${IMAGE_NAME}:${BUILD_NUMBER}
'''
      }
    }

  }
  environment {
    IMAGE_NAME = 'my-app-1'
    PORT = '8000'
  }
}