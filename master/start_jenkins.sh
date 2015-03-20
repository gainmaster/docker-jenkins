#!/usr/bin/env bash

#
# Start jenkins server
#

export JAVA_ARGS=${JAVA_ARGUMENTS:=-Xmx512m}
export JAVA_OPTS=${JAVA_OPTIONS:=}
export JENKINS_USER=jenkins
export JENKINS_HOME=/var/lib/jenkins
export JENKINS_WAR=/usr/share/java/jenkins/jenkins.war
export JENKINS_WEBROOT=--webroot=/var/cache/jenkins
export JENKINS_PORT=${JENKINS_PORT:=--httpPort=8080}
export JENKINS_AJPPORT=--ajp13Port=-1
export JENKINS_OPTS=${JENKINS_OPTIONS:=}

# Start jenkins server
/usr/bin/java $JAVA_ARGS $JAVA_OPTS -jar /usr/share/java/jenkins/jenkins.war $JENKINS_WEBROOT $JENKINS_PORT $JENKINS_AJPPORT $JENKINS_OPTS