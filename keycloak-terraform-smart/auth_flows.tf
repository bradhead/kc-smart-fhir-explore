resource "keycloak_authentication_flow" "flow" {
  realm_id = keycloak_realm.realm.id
  alias    = "smart-on-fhir-flow"
  description = "SMART App Launch Browser-Based Authentication"
  provider_id = "basic-flow"
}

resource "keycloak_authentication_execution" "execution1" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "identity-provider-redirector"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "execution2" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "forms-provider"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "execution3" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "audience-validator"
  requirement       = "DISABLED"
}
resource "keycloak_authentication_execution_config" "config3" {
  realm_id     = keycloak_realm.realm.id
  execution_id = keycloak_authentication_execution.execution3.id
  alias        = "audience-validator-config-alias"
  config = {
    audiences = var.keycloak_environment.custom_audience
  }
}

resource "keycloak_authentication_execution" "execution4" {
  realm_id          = keycloak_realm.realm.id
  parent_flow_alias = keycloak_authentication_flow.flow.alias
  authenticator     = "auth-select-patient"
  requirement       = "REQUIRED"
}

resource "keycloak_authentication_execution_config" "config4" {
  realm_id     = keycloak_realm.realm.id
  execution_id = keycloak_authentication_execution.execution4.id
  alias        = "docker.host"
  config = {
    internalFhirUrl = var.keycloak_environment.custom_audience
  }
}