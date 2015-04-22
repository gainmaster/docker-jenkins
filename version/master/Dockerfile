FROM gainmaster/java
MAINTAINER Tony Hesjevik <tony@hesjevik>

# Install jenkins
RUN pacman-install jenkins git docker
COPY start_jenkins.sh /usr/local/bin/start_jenkins

# Install fleetctl
RUN \
  curl -O -L https://github.com/coreos/fleet/releases/download/v0.9.1/fleet-v0.9.1-linux-amd64.tar.gz && \
  tar -zxvf fleet-v0.9.1-linux-amd64.tar.gz fleet-v0.9.1-linux-amd64/fleetctl && \
  mv fleet-v0.9.1-linux-amd64/fleetctl /usr/bin/fleetctl && \
  rm -Rf fleet-v0.9.1*

# Install etcdctl
RUN \
  curl -O -L https://github.com/coreos/etcd/releases/download/v0.4.5/etcd-v0.4.5-linux-amd64.tar.gz && \
  tar -zxvf etcd-v0.4.5-linux-amd64.tar.gz etcd-v0.4.5-linux-amd64/etcdctl && \
  mv etcd-v0.4.5-linux-amd64/etcdctl /usr/bin/etcdctl && \
  rm -Rf etcd-v0.4.5*

VOLUME /var/lib/jenkins

USER jenkins

ENV JAVA_ARGUMENTS=
ENV JAVA_OPTIONS=-Xmx512m
ENV JENKINS_PORT=8080
ENV JENKINS_OPTS=

EXPOSE 8080

CMD ["start_jenkins"]