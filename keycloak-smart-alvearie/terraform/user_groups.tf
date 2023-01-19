resource "keycloak_group" "fhir_user_group" {
  realm_id = data.keycloak_realm.smart_realm.id
  name     = "fhirUser"
}