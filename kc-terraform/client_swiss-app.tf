resource "keycloak_openid_client" "smart-client" {
  realm_id                     = data.keycloak_realm.smart_realm.id
  client_id                    = var.client_smart_app.id
  name                         = "Swiss SMART on FHIR Demo App"
  description                  = "Example SMART on FHIR client"
  enabled                      = true
  access_type                  = "PUBLIC"
  standard_flow_enabled        = true
  direct_access_grants_enabled = true
  valid_redirect_uris          = "http://localhost:4200/*"
  web_origins                  = "http://localhost:4200"
  full_scope_allowed           = false
}

resource "keycloak_openid_client_default_scopes" "client_default_scopes" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.client_id

  default_scopes = [
    "openid",
    "profile",
    "web-origins",
    keycloak_openid_client_scope.audience_scope.name,
    keycloak_openid_client_scope.immunization_read_scope.name,
    keycloak_openid_client_scope.laboratory_read_scope.name,
    keycloak_openid_client_scope.notification_read_scope.name,
    keycloak_openid_client_scope.patient_read_scope.name
  ]
}
resource "keycloak_openid_client_optional_scopes" "client_optional_scopes" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.client_id

  optional_scopes = [
    "address",
    "email",
    "phone",
    "microprofile-jwt",
    keycloak_openid_client_scope.encounter_read_scope.name,
    keycloak_openid_client_scope.medication_dispense_read_scope.name,
    keycloak_openid_client_scope.observation_read_scope.name,
  ]
}

resource "keycloak_openid_user_attribute_protocol_mapper" "pdid" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.client_id
  name                = "pdid"
  user_attribute      = "pdid"
  claim_name          = "pdid"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}