#!/bin/bash

echo "**************************************"
echo "***** Pushing war file to tomcat *****"
echo "***************************************"

IMAGE=./java-app/target/*.war

docker cp $IMAGE tomcat:/tmp/new_image.war
