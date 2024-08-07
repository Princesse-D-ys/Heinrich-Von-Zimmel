#!/usr/bin/env bash
set -xe
java -jar /usr/local/bin/plugin-manager.jar --war /usr/share/java/jenkins.war --plugin-download-directory /srv/jenkins/plugins --plugin-file /srv/jenkins/plugins.yaml
