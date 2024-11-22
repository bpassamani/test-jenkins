pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${IMAGE_NAME}:${BUILD_NUMBER}")
        }

      }
    }

    stage('Run Docker Container') {
      steps {
        script {
          sh """
          docker stop ${IMAGE_NAME} || true
          docker rm ${IMAGE_NAME} || true
          docker run -d --name ${IMAGE_NAME} -p ${PORT}:${PORT} ${IMAGE_NAME}:${BUILD_NUMBER}
          """
        }

      }
    }

  }
  environment {
    IMAGE_NAME = 'my-app'
    PORT = '8000'
  }
  post {
    always {
      sh 'docker image prune -f'
    }

  }
}