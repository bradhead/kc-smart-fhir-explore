#!/bin/sh
#
# Builds the Alvearie Keycloak Extensions to support SMART on FHIR.
# 
# See the Alvearie Github repository's README.md for more details.
#
mkdir -p build
mkdir -p target
cd build
#git clone https://github.com/Alvearie/keycloak-extensions-for-fhir.git
git clone https://github.com/XcrigX/keycloak-extensions-for-fhir.git
cd keycloak-extensions-for-fhir
git checkout -b feature/quarkus-update
mvn -B clean package -DskipTests
cp keycloak-extensions/target/keycloak-extensions-0.5.0-SNAPSHOT.jar ../../target/keycloak-extensions-0.5.0-SNAPSHOT.jar
#cp jboss-fhir-provider/target/jboss-fhir-provider-0.5.0-SNAPSHOT.jar ../../target/jboss-fhir-provider-0.5.0-SNAPSHOT.jar
cp -r jboss-fhir-provider/target/jboss-modules ../../target/
echo 'Done building Alvearie JAR files for Keycloak SMART on FHIR'