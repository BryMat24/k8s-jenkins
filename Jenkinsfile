pipeline {
  agent {
    kubernetes {
      yamlFile 'agent.yaml'
      retries 2
    }
  }
  stages {
    stage('Test') {
      steps {
        container('test-container') {
          sh '''
            echo "Running test inside test-container..."
          '''
        }
      }
    }
  }
}