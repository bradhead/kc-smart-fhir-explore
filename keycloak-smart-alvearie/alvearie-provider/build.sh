#!/bin/sh
mkdir -p build
mkdir -p target
mkdir -p target/providers
cd build
git clone https://github.com/Alvearie/keycloak-extensions-for-fhir.git
cd keycloak-extensions-for-fhir
mvn -B clean package -DskipTests
cp keycloak-extensions/target/keycloak-extensions-0.5.0-SNAPSHOT.jar ../../target/providers/keycloak-extensions-0.5.0-SNAPSHOT.jar
cp jboss-fhir-provider/target/jboss-fhir-provider-0.5.0-SNAPSHOT.jar ../../target/providers/jboss-fhir-provider-0.5.0-SNAPSHOT.jar
cp jboss-fhir-provider/target/jboss-fhir-provider-0.5.0-SNAPSHOT-jboss-modules.jar ../../target/providers/jboss-fhir-provider-0.5.0-SNAPSHOT-jboss-modules.jar
echo 'Done building Alvearie JAR files for Keycloak SMART on FHIR'