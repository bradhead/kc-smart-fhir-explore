resource "keycloak_openid_client" "client_2" {
  realm_id                     = data.keycloak_realm.lra_realm.id
  client_id                    = var.client_app2.id
  name                         = "Swiss App2 Demo App"
  description                  = "Example API client"
  enabled                      = true
  access_type                  = "PUBLIC"
  standard_flow_enabled        = true
  implicit_flow_enabled        = false
  direct_access_grants_enabled = false
  valid_redirect_uris          = var.client_app2.valid_redirects
  web_origins                  = var.client_app2.web_origins
  full_scope_allowed           = false
}

resource "keycloak_openid_client_default_scopes" "default_scopes2" {
  realm_id  = keycloak_openid_client.client_2.realm_id
  client_id = keycloak_openid_client.client_2.id

  default_scopes = [
    "profile",
    "web-origins"
  ]
}
resource "keycloak_openid_client_optional_scopes" "client_optional_scopes2" {
  realm_id  = keycloak_openid_client.client_2.realm_id
  client_id = keycloak_openid_client.client_2.id

  optional_scopes = [
    "address",
    "email",
    "offline_access",
    "phone",
    "microprofile-jwt",
    "acr",
    keycloak_openid_client_scope.patient_all_read_scope.name,
  ]
}

resource "keycloak_openid_user_attribute_protocol_mapper" "provider_identifier2" {
  realm_id            = keycloak_openid_client.client_2.realm_id
  client_id           = keycloak_openid_client.client_2.id
  name                = "provider_identifier"
  user_attribute      = "provider_identifier"
  claim_name          = "provider_identifier"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = false
}
resource "keycloak_openid_user_attribute_protocol_mapper" "provider_status2" {
  realm_id            = keycloak_openid_client.client_2.realm_id
  client_id           = keycloak_openid_client.client_2.id
  name                = "provider_status"
  user_attribute      = "provider_status"
  claim_name          = "provider_status"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = false
}
