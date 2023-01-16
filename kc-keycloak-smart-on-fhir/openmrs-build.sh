#!/bin/sh

mkdir -p tmp
cd tmp/openmrs-contrib-keycloak-smart-auth
git clone https://github.com/openmrs/openmrs-contrib-keycloak-smart-auth.git
mvn clean install
cp openmrs-keycloak-ear/target/openmrs-keycloak-smart-authentication-1.0.0-SNAPSHOT.ear ../../modules/.
cd ../..
rm -rf tmp

echo 'done building EAR files for Keycloak SMART on FHIR'