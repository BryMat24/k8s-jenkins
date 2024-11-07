pipeline {
  agent {
    kubernetes {
      yamlFile 'agent.yaml'
      retries 2
    }
  }
  stages {
    stage('Test') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }
      }
      steps {
        echo "test"
      }
    }
  }
}
