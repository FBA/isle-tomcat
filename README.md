# ISLE Tomcat Base Image

## Part of the ISLE Islandora 7.x Docker Images
Designed as a base for ISLE components requiring Tomcat and OpenJDK Java. These include Solr, Image Services, and Fedora.

Based on:  
 - [Adopt OpenJDK 8 Docker Image](https://hub.docker.com/r/adoptopenjdk/openjdk8)
 - [Tomcat 8.5.42](https://tomcat.apache.org/)

Contains and Includes:
  - `cron` and `tmpreaper` to clean /tmp *and* /usr/local/tomcat/temp
  - Tomcat Native library
  - [confd](http://www.confd.io/)

## Important Paths
  - $CATALINA_HOME is `/usr/local/tomcat`

## Java Options
 - See [Dockerfile](https://github.com/Islandora-Collaboration-Group/isle-tomcat/blob/master/Dockerfile) for default ENV values.

### Default Login information

Tomcat Admin
  - Username: admin
  - Password: isle_admin

Tomcat Manager
  - Username: manager
  - Password: isle_manager  
