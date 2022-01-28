#!/bin/bash

echo "***********************************"
echo "********** Building war ***********"
echo "***********************************"

WORKSPACE=/home/graystum/Desktop/devops/jenkins/jenkins-data/workspace/java-app-pipeline

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
