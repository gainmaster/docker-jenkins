# Pull base image
FROM bachelorthesis/java

# Install jenkins
RUN pacman -Sy jenkins git --noconfirm
COPY start-jenkins.sh /usr/bin/

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

CMD ["/usr/bin/start-jenkins.sh"]