resource "keycloak_openid_client" "licence_status_client" {
  realm_id                     = data.keycloak_realm.realm.id
  client_id                    = "LICENCE=STATUS"
  name                         = "MOH LICENCE-STATUS"
  description                  = "This is for defining Provider Roles meant to be realm-wide available. How quaint"
  enabled                      = true
  standard_flow_enabled        = false
  service_accounts_enabled     = false
  implicit_flow_enabled        = false
  direct_access_grants_enabled = false
  access_type                  = "BEARER-ONLY"
}

resource "keycloak_role" "client_role_md" {
  realm_id    = data.keycloak_realm.realm.id
  client_id   = keycloak_openid_client.licence_status_client.id
  name        = "MD"
  description = "Medical Doctor role"
}

resource "keycloak_role" "client_role_moa" {
  realm_id    = data.keycloak_realm.realm.id
  client_id   = keycloak_openid_client.licence_status_client.id
  name        = "MOA"
  description = "Medical Office Assistant role"
}

resource "keycloak_role" "client_role_rnp" {
  realm_id    = data.keycloak_realm.realm.id
  client_id   = keycloak_openid_client.licence_status_client.id
  name        = "RNP"
  description = "Registered Nurse Practitioner role"
}
