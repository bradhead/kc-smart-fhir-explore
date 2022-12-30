resource "keycloak_openid_client" "smart-client" {
  realm_id                     = data.keycloak_realm.smart_realm.id
  client_id                    = var.client_smart_app.id
  name                         = "Swiss SMART on FHIR Demo App"
  description                  = "Example SMART on FHIR client"
  enabled                      = true
  access_type                  = "PUBLIC"
  standard_flow_enabled        = true
  direct_access_grants_enabled = true
  valid_redirect_uris          = var.client_smart_app.valid_redirects
  web_origins                  = var.client_smart_app.web_origins
  full_scope_allowed           = false
}

resource "keycloak_openid_client_default_scopes" "client_default_scopes" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.id

  default_scopes = [
    "profile",
    "web-origins"
  ]
}
resource "keycloak_openid_client_optional_scopes" "client_optional_scopes" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.id

  optional_scopes = [
    "address",
    "email",
    "offline_access",
    "phone",
    "microprofile-jwt",
    keycloak_openid_client_scope.fhir_user_scope.name,
    keycloak_openid_client_scope.launch_patient_context_scope.name,
    keycloak_openid_client_scope.patient_all_write_scope.name,
    keycloak_openid_client_scope.patient_all_read_scope.name,

  ]
}

resource "keycloak_openid_user_attribute_protocol_mapper" "pdid" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.id
  name                = "provider_identifier"
  user_attribute      = "provider_identifier"
  claim_name          = "provider_identifier"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = false
}
resource "keycloak_openid_user_attribute_protocol_mapper" "pdid" {
  realm_id  = keycloak_openid_client.smart-client.realm_id
  client_id = keycloak_openid_client.smart-client.id
  name                = "provider_status"
  user_attribute      = "provider_status"
  claim_name          = "provider_status"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = false
}