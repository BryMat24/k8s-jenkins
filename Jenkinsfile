pipeline {
  agent {
    kubernetes {
      yamlFile 'agent.yaml'
      retries 2
    }
  }
  stages {
    stage('Setup Docker CLI') {
      steps {
        sh '''
          docker version
        '''
      }
    }
    stage('Build Docker Image') {
      steps {
        sh '''
          docker build -t test-image:latest .
        '''
      }
    }
    stage('Cleanup') {
      steps {
        sh '''
          docker rmi test-image:latest || true
        '''
      }
    }
  }
}
