# Docker Arch Linux devel

This repository contains a **Dockerfile** for an Arch Linux with developement tools docker image, and a **Vagrantfile** for local development. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [bachelorthesis/archlinux][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/bachelorthesis/archlinux-devel/
[docker_hub_base_image]: https://registry.hub.docker.com/u/bachelorthesis/archlinux/

### Installed packages

* [jenkins-ci][jenkins-ci] - An extensible open source continuous integration server

[jenkins-ci]: https://www.archlinux.org/packages/community/any/jenkins/

## Resources

These resources have been helpful when creating this Docker image:

* [Cloudbees's Github repository for the official Jenkins Docker image.][github_repository_cloudbees_jenkins]

[github_repository_cloudbees_jenkins]: https://github.com/cloudbees/jenkins-ci.org-docker