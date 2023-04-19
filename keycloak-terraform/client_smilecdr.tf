resource "keycloak_openid_client" "smile" {
  realm_id                     = data.keycloak_realm.realm.id
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


resource "keycloak_openid_user_attribute_protocol_mapper" "smile_provider_identifier" {
  realm_id            = keycloak_openid_client.smile.realm_id
  client_id           = keycloak_openid_client.smile.id
  name                = "practitionerId"
  user_attribute      = "practitionerId"
  claim_name          = "practitionerId"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}
resource "keycloak_openid_user_attribute_protocol_mapper" "smile_provider_status" {
  realm_id            = keycloak_openid_client.smile.realm_id
  client_id           = keycloak_openid_client.smile.id
  name                = "practitionerStatus"
  user_attribute      = "practitionerStatus"
  claim_name          = "practitionerStatus"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "smile_provider_role" {
  realm_id            = keycloak_openid_client.smile.realm_id
  client_id           = keycloak_openid_client.smile.id
  name                = "practitionerRole"
  user_attribute      = "practitionerRole"
  claim_name          = "practitionerRole"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "smile_provider_license" {
  realm_id            = keycloak_openid_client.smile.realm_id
  client_id           = keycloak_openid_client.smile.id
  name                = "practitionerLicense"
  user_attribute      = "practitionerLicense"
  claim_name          = "practitionerLicense"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "smile_provider_specialty" {
  realm_id            = keycloak_openid_client.smile.realm_id
  client_id           = keycloak_openid_client.smile.id
  name                = "practitionerSpecialty"
  user_attribute      = "practitionerSpecialty"
  claim_name          = "practitionerSpecialty"
  claim_value_type    = "String"
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}



