resource "keycloak_authentication_flow" "flow" {
  realm_id = keycloak_realm.realm.id
  alias    = "smart-on-fhir-flow"
}

resource "keycloak_authentication_execution" "execution" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "identity-provider-redirector"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "execution" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "forms-provider"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_subflow" "subflow" {
  realm_id          = keycloak_realm.realm.id
  alias             = "smart-forms-alias"
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  provider_id       = "basic-flow"
  requirement       = "ALTERNATIVE"
}