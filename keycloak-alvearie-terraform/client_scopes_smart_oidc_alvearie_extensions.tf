/*
 * This mapper uses the custom mapper from Alvearie Extensions which are installed in providers folder as Jar files.
 *
 * This does not work with regular Keycloak unless it has the Alvearie providers added.
 *
 */
resource "keycloak_generic_protocol_mapper" "oidc-patient-prefix-usermodel-attribute-mapper" {
  realm_id        = keycloak_openid_client_scope.fhir_user_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.fhir_user_scope.id
  name            = "fhirUser Mapper"
  protocol        = "openid-connect"
  protocol_mapper = "oidc-patient-prefix-usermodel-attribute-mapper"
  config = {
    "user.attribute"       = "resourceId",
    "claim.name"           = "fhirUser",
    "jsonType.label"       = "String",
    "id.token.claim"       = "true",
    "access.token.claim"   = "false",
    "userinfo.token.claim" = "true"
  }
}