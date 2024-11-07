FROM jenkins/inbound-agent:4.13-2

USER root

RUN apt-get update && apt-get install -y docker.io

ENV DOCKER_HOST=tcp://localhost:2375

ENTRYPOINT ["/usr/local/bin/jenkins-agent"]