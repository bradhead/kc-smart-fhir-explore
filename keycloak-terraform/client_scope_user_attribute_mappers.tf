

resource "keycloak_openid_user_attribute_protocol_mapper" "attribute_mapper1" {
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

resource "keycloak_openid_user_attribute_protocol_mapper" "attribute_mapper2" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-qualification-mapper"
  user_attribute       = "qual"
  claim_name           = "qual"
  claim_value_type     = "JSON"
  multivalued          = false
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}

resource "keycloak_openid_user_attribute_protocol_mapper" "attribute_mapper3" {
  realm_id             = data.keycloak_realm.realm.id
  client_scope_id      = data.keycloak_openid_client_scope.openid_profile_scope.id
  name                 = "user-role-mapper"
  user_attribute       = "org_role"
  claim_name           = "org_role"
  claim_value_type     = "JSON"
  multivalued          = false
  add_to_id_token      = true
  add_to_access_token  = true
  add_to_userinfo      = true
  aggregate_attributes = false
}

resource "keycloak_openid_user_attribute_protocol_mapper" "attribute_mapper4" {
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
  aggregate_attributes = true
}
