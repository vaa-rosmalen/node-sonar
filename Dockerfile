FROM node:10.17.0-buster as builder

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y openjdk-11-jre

RUN npm install -g sonarqube-scanner

# Cleanup
RUN apt-get -q autoremove \
    && apt-get -q clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin
