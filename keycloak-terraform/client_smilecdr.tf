resource "keycloak_openid_client" "smile" {
  realm_id                     = data.keycloak_realm.lra_realm.id
  client_id                    = var.smile-client.id
  name                         = "Smile CDR Authorization/Resource Server"
  description                  = "Smile Authorization/Resource Server"
  enabled                      = true
  standard_flow_enabled        = true
  service_accounts_enabled     = true
  implicit_flow_enabled        = false
  direct_access_grants_enabled = true
  access_type                  = "CONFIDENTIAL"
  valid_redirect_uris          = var.smile-client.valid_redirects
}

resource "keycloak_openid_client_default_scopes" "smile_default_scopes" {
  realm_id  = keycloak_openid_client.smile.realm_id
  client_id = keycloak_openid_client.smile.id

  default_scopes = [
    "profile",
    "web-origins",
  ]
}

resource "keycloak_openid_client_optional_scopes" "smile_optional_scopes" {
  realm_id  = keycloak_openid_client.smile.realm_id
  client_id = keycloak_openid_client.smile.id

  optional_scopes = [
    "address",
    "email",
    "phone",
    "microprofile-jwt",
    "acr"
  ]
}

