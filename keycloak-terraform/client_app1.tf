resource "keycloak_openid_client" "client1" {
  realm_id                     = data.keycloak_realm.realm.id
  client_id                    = var.client_app1.id
  name                         = "Swiss App for Providers"
  description                  = "Example FHIR client"
  enabled                      = true
  access_type                  = "PUBLIC"
  standard_flow_enabled        = true
  implicit_flow_enabled        = false
  direct_access_grants_enabled = false
  login_theme                  = "moh-idp"
  valid_redirect_uris          = var.client_app1.valid_redirects
  web_origins                  = var.client_app1.web_origins
  base_url                     = var.client_app1.base_url
  full_scope_allowed           = false
}

resource "keycloak_openid_client_default_scopes" "client1_default_scopes" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id

  default_scopes = [
    "web-origins"
  ]
}
resource "keycloak_openid_client_optional_scopes" "client1_optional_scopes" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id

  optional_scopes = [
    "offline_access",
    "profile",
    "address",
    "email",
    "phone",
    "microprofile-jwt",
    "acr",
    keycloak_openid_client_scope.fhir_user_scope.name,
    keycloak_openid_client_scope.patient_all_read_scope.name,
  ]
}
