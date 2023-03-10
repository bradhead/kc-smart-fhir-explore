resource "keycloak_openid_client" "fhir-rs" {
  client_id                = "smile-cdr-rs"
  name                     = "Smile CDR FHIR Resource Server"
  realm_id                 = data.keycloak_realm.lra_realm.id
  description              = "A FHIR Resource Server confidential client."
  standard_flow_enabled    = true
  service_accounts_enabled = true
  access_type              = "CONFIDENTIAL"
  client_secret            = var.fhir_rs_client_secret
  valid_redirect_uris = ["http://localhost:8000/*",]
}

resource "keycloak_openid_client_optional_scopes" "rs_optional_scopes" {
  realm_id  = keycloak_openid_client.fhir-rs.realm_id
  client_id = keycloak_openid_client.fhir-rs.id

  optional_scopes = [
    "profile",
    "offline_access",
    "microprofile-jwt"
  ]
}

