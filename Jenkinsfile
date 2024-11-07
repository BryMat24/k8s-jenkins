pipeline {
  agent {
    kubernetes {
      yamlFile 'agent.yaml'
      retries 2
    }
  }
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          def image = docker.build('test-image:latest')
        }
      }
    }
    stage('Cleanup') {
      steps {
        sh """
          docker rmi test-image:latest
        """
      }
    }
  }
}
