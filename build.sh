#!/bin/bash

IMAGES=("jdk-8-maven" "tomee-plume" "postgres" "wildfly-latest")

for image in "${IMAGES[@]}"
do
	echo -e "\n\nBuilding docker image ${image}...";
	cd ${image}
	./build.sh
	cd ..
	echo -e "Image ${image} built!"
done

