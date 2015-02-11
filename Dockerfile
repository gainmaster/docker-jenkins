# Pull base image
FROM bachelorthesis/java

# Install jenkins
RUN pacman -S --noconfirm jenkins
ADD s6/jenkins /etc/s6/jenkins

# Mount jenkins homedirectory
VOLUME /var/lib/jenkins

# User
USER jenkins

ENV JENKINS_HOME /var/lib/jenkins
ENV JENKINS_OPTS 

# Expose port for main web interface
EXPOSE 8080

# Expose port for attached slave agents
EXPOSE 50000

# Run s6 with PID 1
#ENTRYPOINT ["/usr/bin/s6-svscan","/etc/s6"]

CMD ["/usr/bin/java", ,"-Xmx512m", "-jar", "/usr/share/java/jenkins/jenkins.war" "$JENKINS_OPTS"]