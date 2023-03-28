resource "keycloak_openid_client" "client1" {
  realm_id                     = data.keycloak_realm.lra_realm.id
  client_id                    = var.client_app1.id
  name                         = "Swiss App for FHIR Demo App"
  description                  = "Example FHIR client"
  enabled                      = true
  access_type                  = "PUBLIC"
  standard_flow_enabled        = true
  implicit_flow_enabled        = false
  direct_access_grants_enabled = false
  valid_redirect_uris          = var.client_app1.valid_redirects
  web_origins                  = var.client_app1.web_origins
  full_scope_allowed           = false
}

resource "keycloak_openid_client_default_scopes" "client1_default_scopes" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id

  default_scopes = [
    "profile",
    "web-origins",
  ]
}
resource "keycloak_openid_client_optional_scopes" "client1_optional_scopes" {
  realm_id  = keycloak_openid_client.client1.realm_id
  client_id = keycloak_openid_client.client1.id

  optional_scopes = [
    "address",
    "email",
    "offline_access",
    "phone",
    "microprofile-jwt",
    "acr",
    keycloak_openid_client_scope.fhir_user_scope.name,
    keycloak_openid_client_scope.patient_all_read_scope.name,
  ]
}

resource "keycloak_openid_user_attribute_protocol_mapper" "client1_provider_identifier" {
  realm_id            = keycloak_openid_client.client1.realm_id
  client_id           = keycloak_openid_client.client1.id
  name                = "practitionerId"
  user_attribute      = "practitionerId"
  claim_name          = "practitionerId"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}
resource "keycloak_openid_user_attribute_protocol_mapper" "client1_provider_status" {
  realm_id            = keycloak_openid_client.client1.realm_id
  client_id           = keycloak_openid_client.client1.id
  name                = "practitionerStatus"
  user_attribute      = "practitionerStatus"
  claim_name          = "practitionerStatus"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "client1_provider_role" {
  realm_id            = keycloak_openid_client.client1.realm_id
  client_id           = keycloak_openid_client.client1.id
  name                = "practitionerRole"
  user_attribute      = "practitionerRole"
  claim_name          = "practitionerRole"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "client1_provider_license" {
  realm_id            = keycloak_openid_client.client1.realm_id
  client_id           = keycloak_openid_client.client1.id
  name                = "practitionerLicense"
  user_attribute      = "practitionerLicense"
  claim_name          = "practitionerLicense"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "client1_provider_specialty" {
  realm_id            = keycloak_openid_client.client1.realm_id
  client_id           = keycloak_openid_client.client1.id
  name                = "practitionerSpecialty"
  user_attribute      = "practitionerSpecialty"
  claim_name          = "practitionerSpecialty"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}
