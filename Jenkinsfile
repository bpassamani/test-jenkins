pipeline {
  agent any
  stages {
    stage('Clone Repo') {
      steps {
        git 'git@github.com:bpassamani/test-jenkins.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t imagem_teste .'
      }
    }

  }
}