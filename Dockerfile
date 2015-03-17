# Pull base image
FROM bachelorthesis/java

# Install jenkins
RUN pacman -Sy jenkins git docker --noconfirm
COPY script/start_jenkins.sh /usr/bin/start_jenkins

ADD https://github.com/coreos/fleet/releases/download/v0.9.1/fleet-v0.9.1-linux-amd64.tar.gz /usr/bin/

# Mount jenkins homedirectory
VOLUME /var/lib/jenkins

# User
USER jenkins

ENV JAVA_ARGUMENTS=
ENV JAVA_OPTIONS=-Xmx512m
ENV JENKINS_PORT=8080
ENV JENKINS_OPTS=

# Expose port for main web interface and slave agents
EXPOSE 8080 50000

CMD ["start_jenkins"]