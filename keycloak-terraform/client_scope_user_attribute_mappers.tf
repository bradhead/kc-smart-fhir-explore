
resource "keycloak_openid_user_attribute_protocol_mapper" "fhirUser_attribute_mapper" {
  realm_id            = data.keycloak_realm.realm.id
  client_scope_id     = keycloak_openid_client_scope.fhir_user_scope.id
  name                = "user-fhirUser-mapper"
  user_attribute      = "fhirUser"
  claim_name          = "fhirUser"
  multivalued         = false
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "idp_attribute_mapper" {
  realm_id            = data.keycloak_realm.realm.id
  client_scope_id     = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                = "user-idp-mapper"
  user_attribute      = "idp"
  claim_name          = "idp"
  multivalued         = false
  add_to_id_token     = true
  add_to_access_token = true
  add_to_userinfo     = true
}

resource "keycloak_openid_user_attribute_protocol_mapper" "qual_attribute_mapper" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-qualification-mapper"
  user_attribute       = "qualification"
  claim_name           = "qual"
  claim_value_type     = "JSON"
  multivalued          = false
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}

resource "keycloak_openid_user_attribute_protocol_mapper" "role_attribute_mapper" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-role-mapper"
  user_attribute       = "practitionerRole"
  claim_name           = "practitionerRole"
  claim_value_type     = "String"
  multivalued          = false
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}

resource "keycloak_openid_user_attribute_protocol_mapper" "status_attribute_mapper" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-status-mapper"
  user_attribute       = "practitionerStatus"
  claim_name           = "practitionerStatus"
  claim_value_type     = "String"
  multivalued          = false
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}

resource "keycloak_openid_user_attribute_protocol_mapper" "id_attribute_mapper" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-providerId-mapper"
  user_attribute       = "practitionerId"
  claim_name           = "practitionerId"
  claim_value_type     = "String"
  multivalued          = false
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}

resource "keycloak_openid_user_attribute_protocol_mapper" "expertise_attribute_mapper" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-expertise-mapper"
  user_attribute       = "expertise"
  claim_name           = "expertise"
  claim_value_type     = "String"
  multivalued          = true
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}
