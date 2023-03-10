resource "keycloak_group" "fhir_user_group" {
  realm_id = data.keycloak_realm.lra_realm.id
  name     = "fhirUser"
}