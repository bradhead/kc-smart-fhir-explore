#!/bin/sh
mkdir -p build
cd build
git clone https://github.com/openmrs/openmrs-contrib-keycloak-smart-auth.git

cd openmrs-contrib-keycloak-smart-auth/openmrs-keycloak-smart-auth
mvn clean install
cp ./target/openmrs-keycloak-smart-auth-1.0.0-SNAPSHOT.jar ../../../target/openmrs-keycloak-smart-auth-1.0.0-SNAPSHOT.jar 
#rm -rf build
echo 'Done building Custom Auth Provider JAR file for Keycloak SMART on FHIR'