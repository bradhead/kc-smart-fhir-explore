resource "keycloak_openid_client" "client2" {
  realm_id                     = data.keycloak_realm.realm.id
  client_id                    = var.client_app2.id
  name                         = "Swiss App Patient Portal"
  description                  = "Example API client"
  enabled                      = true
  access_type                  = "PUBLIC"
  standard_flow_enabled        = true
  implicit_flow_enabled        = false
  direct_access_grants_enabled = false
  login_theme                  = var.client_app1.login_theme
  valid_redirect_uris          = var.client_app2.valid_redirects
  web_origins                  = var.client_app2.web_origins
  full_scope_allowed           = false
  base_url                     = var.client_app2.base_url
  authentication_flow_binding_overrides {
    browser_id = keycloak_authentication_flow.patient_login_flow.id
  }
}

resource "keycloak_openid_client_default_scopes" "client2_default_scopes" {
  realm_id  = keycloak_openid_client.client2.realm_id
  client_id = keycloak_openid_client.client2.id

  default_scopes = [
  "web-origins"]
}
resource "keycloak_openid_client_optional_scopes" "client2_optional_scopes" {
  realm_id  = keycloak_openid_client.client2.realm_id
  client_id = keycloak_openid_client.client2.id

  optional_scopes = [
    "offline_access",
    "profile",
    "address",
    "phone",
    "microprofile-jwt",
    "acr",
    keycloak_openid_client_scope.fhir_user_scope.name,
  keycloak_openid_client_scope.patient_all_read_scope.name, ]


}


resource "keycloak_openid_user_attribute_protocol_mapper" "client2_patient_id" {
  realm_id            = keycloak_openid_client.client2.realm_id
  client_id           = keycloak_openid_client.client2.id
  name                = "hdid"
  user_attribute      = "hdid"
  claim_name          = "patient_hdid"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}


