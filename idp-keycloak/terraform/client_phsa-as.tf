resource "keycloak_openid_client" "phsa-as-client" {
  realm_id                     = data.keycloak_realm.this-realm.id
  client_id                    = var.client_phsa_as.id
  name                         = "PHSA Authorization Server"
  description                  = "Another Keycloak instance acting as an AS"
  enabled                      = true
  access_type                  = "CONFIDENTIAL"
  standard_flow_enabled        = false
  direct_access_grants_enabled = true
  valid_redirect_uris          = var.client_phsa_as.valid_redirects
  web_origins                  = var.client_phsa_as.web_origins
  full_scope_allowed           = true
}

resource "keycloak_openid_client_default_scopes" "client_default_scopes" {
  realm_id  = keycloak_openid_client.phsa-as-client.realm_id
  client_id = keycloak_openid_client.phsa-as-client.id

  default_scopes = [
    "profile",
    "web-origins"
  ]
}
resource "keycloak_openid_client_optional_scopes" "client_optional_scopes" {
  realm_id  = keycloak_openid_client.phsa-as-client.realm_id
  client_id = keycloak_openid_client.phsa-as-client.id

  optional_scopes = [
    "address",
    "email",
    "phone",
    "microprofile-jwt"
  ]
}

resource "keycloak_openid_user_attribute_protocol_mapper" "provider_identifier" {
  realm_id  = keycloak_openid_client.phsa-as-client.realm_id
  client_id = keycloak_openid_client.phsa-as-client.id
  name                = "provider_identifier"
  user_attribute      = "provider_identifier"
  claim_name          = "provider_identifier"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = false
}
resource "keycloak_openid_user_attribute_protocol_mapper" "provider_status" {
  realm_id  = keycloak_openid_client.phsa-as-client.realm_id
  client_id = keycloak_openid_client.phsa-as-client.id
  name                = "provider_status"
  user_attribute      = "provider_status"
  claim_name          = "provider_status"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = false
}