pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: jnlp
            image: 'jenkins/inbound-agent'
            args: ['$(JENKINS_SECRET)', '$(JENKINS_NAME)']
          - name: docker
            image: docker:20.10.7-dind
            securityContext:
              privileged: true
            env:
            - name: DOCKER_TLS_CERTDIR
              value: ""
            command:
            - dockerd
            args:
            - --host=tcp://0.0.0.0:2375
            volumeMounts:
            - name: docker-graph-storage
              mountPath: /var/lib/docker
          volumes:
          - name: docker-graph-storage
            emptyDir: {}
      '''
      retries 2
    }
  }
  stages {
    stage('test') {
      steps {
        echo "test"
      }
    }
  }
}
