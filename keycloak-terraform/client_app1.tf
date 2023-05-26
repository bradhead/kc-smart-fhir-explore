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
  login_theme                  = var.client_app1.login_theme
  valid_redirect_uris          = var.client_app1.valid_redirects
  web_origins                  = var.client_app1.web_origins
  base_url                     = var.client_app1.base_url
  full_scope_allowed           = false
  //authentication_flow_binding_overrides {
  //  browser_id = keycloak_authentication_flow.provider_login_flow.id
  //}
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
    "phone",
    "microprofile-jwt",
    "acr",
    keycloak_openid_client_scope.fhir_user_scope.name,
    keycloak_openid_client_scope.patient_all_read_scope.name,
  ]
}

resource "keycloak_generic_role_mapper" "client_status_role_md_mapper" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id
  role_id   = keycloak_role.client_role_md.id
}

resource "keycloak_generic_role_mapper" "client_status_role_rnp_mapper" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id
  role_id   = keycloak_role.client_role_rnp.id
}

resource "keycloak_generic_role_mapper" "client_status_role_moa_mapper" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id
  role_id   = keycloak_role.client_role_moa.id
}

resource "keycloak_generic_role_mapper" "client_status_role_practitioner_mapper" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id
  role_id   = keycloak_role.client_role_practitioner.id
}

resource "keycloak_openid_user_attribute_protocol_mapper" "client1_endorser_attribute_mapper" {
  realm_id            = keycloak_openid_client.client1.realm_id
  client_id           = keycloak_openid_client.client1.id
  name                = "endorser_data"
  user_attribute      = "endorser_data"
  claim_name          = "endorser_data"
  claim_value_type    = "String"
  multivalued         = true
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}


resource "keycloak_openid_user_client_role_protocol_mapper" "user_client_role_mapper" {
  realm_id                    = keycloak_openid_client.client1.realm_id
  client_id                   = keycloak_openid_client.client1.id
  name                        = "User LICENCE-Status Role"
  claim_name                  = "provider_role"
  client_id_for_role_mappings = "LICENCE-STATUS"
  client_role_prefix          = ""
  multivalued                 = true
}
