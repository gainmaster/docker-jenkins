# Docker Jenkins

[![Build Status](http://ci.hesjevik.im/buildStatus/icon?job=docker-jenkins)](http://ci.hesjevik.im/job/docker-jenkins/) [![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg?style=plastic)](https://registry.hub.docker.com/u/gainmaster/jenkins/)

This repository contains a **Dockerfile** for an Arch Linux with developement tools docker image. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [gainmaster/java][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/gainmaster/jenkins/
[docker_hub_base_image]: https://registry.hub.docker.com/u/gainmaster/java/

## Docker Hub automated build tags

`gainmaster/nodejs` provides multiple tagged images:

* `latest` (default) : Jenkins Master (alias to `master`)
* `master` : Jenkins Master
* `slave` : Jenkins slave

### Installed packages

* [jenkins][jenkins] - Extensible open source continuous integration server

[jenkins]: https://www.archlinux.org/packages/community/any/jenkins/

## Resources

These resources have been helpful when creating this Docker image:

* [Cloudbees's Github repository for the official Jenkins Docker image.][github_repository_cloudbees_jenkins]

[github_repository_cloudbees_jenkins]: https://github.com/cloudbees/jenkins-ci.org-docker
