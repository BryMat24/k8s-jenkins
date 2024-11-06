pipeline {
    agent {
        kubernetes {
            yamlFile 'agent.yaml'
        }
    }
    stages {
        stage('Build and Test') {
            steps {
                script {
                    echo "Running in JNLP container with Docker"
                }
            }
        }
    }
}
