FROM jenkins/inbound-agent:4.11-1
USER root
RUN apt-get update && apt-get install -y docker.io
USER jenkins
