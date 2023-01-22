#!/bin/sh
mkdir -p build
mkdir -p target
mkdir -p target/providers
cd build
#git clone https://github.com/Alvearie/keycloak-extensions-for-fhir.git
#cd keycloak-extensions-for-fhir
git clone https://github.com/XcrigX/keycloak-extensions-for-fhir.git
cd keycloak-extensions-for-fhir
git checkout -b feature/quarkus-update
mvn -B clean package -DskipTests
cd ..
echo 'Done building Alvearie JAR files for Keycloak SMART on FHIR'