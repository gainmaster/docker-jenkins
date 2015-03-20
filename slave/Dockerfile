FROM bachelorthesis/dind
MAINTAINER Tony Hesjevik <tony@hesjevik>

RUN pacman-install sudo && \
  echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Install bats
RUN \
  curl -O -L https://github.com/sstephenson/bats/archive/v0.4.0.tar.gz && \
  tar -xvzf v0.4.0.tar.gz && \
  ./bats-0.4.0/install.sh /usr/local && \
  rm -Rf bats-0.4.0

# Add jenkins group and user
RUN \
  groupadd jenkins --gid 997 && \
  useradd jenkins --uid 997 --gid jenkins --groups docker,wheel

USER jenkins

CMD ["sudo", "start_docker"]