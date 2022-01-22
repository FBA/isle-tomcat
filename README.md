# ISLE Tomcat Base Image

## Part of the ISLE Islandora 7.x Docker Images
Designed as the base image for ISLE components requiring Tomcat and OpenJDK Java. These include Solr, Image Services, and Fedora.

Based on:
* [Eclipse Temurin / OpenJDK 8 Docker Image](https://hub.docker.com/_/eclipse-temurin)
* [Tomcat 8.5.x](https://tomcat.apache.org/)

Contains and Includes:
* `cron` and `tmpreaper` to clean /tmp *and* /usr/local/tomcat/temp
* Tomcat Native library
* [confd](http://www.confd.io/)

## Important Paths
* $CATALINA_HOME is `/usr/local/tomcat`

## Java Options
* See [Dockerfile](https://github.com/Islandora-Collaboration-Group/isle-tomcat/blob/master/Dockerfile) for default ENV values.

## Usage

* This image is the base image and critical component for the Docker image build process of the following ISLE images:
  * [Solr](https://github.com/Islandora-Collaboration-Group/isle-solr)
  * [Image Services](https://github.com/Islandora-Collaboration-Group/isle-imageservices)
  * [Fedora](https://github.com/Islandora-Collaboration-Group/isle-fedora)
  * [Blazegraph](https://github.com/Islandora-Collaboration-Group/isle-blazegraph)

* For general usage of this image and [ISLE](https://github.com/Islandora-Collaboration-Group/ISLE), please refer to [ISLE documentation](https://islandora-collaboration-group.github.io/ISLE/)
