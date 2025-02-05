FROM jenkins/jenkins:lts

USER root

# Instalar Docker y Maven
RUN apt-get update && apt-get install -y \
    curl \
    docker.io \
    maven

# Permisos para usar Docker dentro del contenedor
RUN usermod -aG docker jenkins

# Instalar Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

USER jenkins
