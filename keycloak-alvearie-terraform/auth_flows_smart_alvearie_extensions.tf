resource "keycloak_authentication_flow" "smart_flow" {
  realm_id    = data.keycloak_realm.realm.id
  alias       = "SMART App Launch"
  description = "SMART App Launch Browser-Based Authentication"
  provider_id = "basic-flow"
}

resource "keycloak_authentication_subflow" "forms_flow" {
  realm_id          = data.keycloak_realm.realm.id
  alias             = "Forms"
  parent_flow_alias = keycloak_authentication_flow.smart_flow.alias
  provider_id       = "basic-flow"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "execution_1" {
  realm_id          = keycloak_authentication_flow.smart_flow.realm_id
  parent_flow_alias = keycloak_authentication_flow.smart_flow.alias
  authenticator     = "auth-cookie"
  requirement       = "ALTERNATIVE"
}
resource "keycloak_authentication_execution" "execution_2" {
  realm_id          = keycloak_authentication_subflow.forms_flow.realm_id
  parent_flow_alias = keycloak_authentication_subflow.forms_flow.alias
  authenticator     = "auth-username-password-form"
  requirement       = "REQUIRED"
}

resource "keycloak_authentication_execution" "execution_3" {
  realm_id          = keycloak_authentication_flow.smart_flow.realm_id
  parent_flow_alias = keycloak_authentication_flow.smart_flow.alias
  authenticator     = "identity-provider-redirector"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "execution_4" {
  realm_id          = keycloak_authentication_flow.smart_flow.realm_id
  parent_flow_alias = keycloak_authentication_flow.smart_flow.alias
  authenticator     = "audience-validator"
  requirement       = "DISABLED"
}
resource "keycloak_authentication_execution_config" "config_4" {
  realm_id     = keycloak_authentication_flow.smart_flow.realm_id
  execution_id = keycloak_authentication_execution.execution_4.id
  alias        = "audience-validator-config"
  config = {
    audiences = var.keycloak_environment.custom_audience
  }
}

resource "keycloak_authentication_execution" "execution_5" {
  realm_id          = keycloak_authentication_flow.smart_flow.realm_id
  parent_flow_alias = keycloak_authentication_flow.smart_flow.alias
  authenticator     = "auth-select-patient"
  requirement       = "REQUIRED"
}

resource "keycloak_authentication_execution_config" "config_5" {
  realm_id     = keycloak_authentication_flow.smart_flow.realm_id
  execution_id = keycloak_authentication_execution.execution_5.id
  alias        = "docker.host"
  config = {
    internalFhirUrl = var.keycloak_environment.custom_audience
  }
}

resource "keycloak_authentication_bindings" "browser_authentication_binding" {
  realm_id     = keycloak_authentication_flow.smart_flow.realm_id
  browser_flow = keycloak_authentication_flow.smart_flow.alias
}

