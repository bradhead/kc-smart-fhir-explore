
resource "keycloak_openid_client_scope" "user_audit_event_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/AuditEvent.read"
  description            = "Read access to AuditEvent"
  consent_screen_text    = "Permission to read AuditEvent that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_audit_event_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_audit_event_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_audit_event_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_provenance_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Provenance.read"
  description            = "Read access to Provenance"
  consent_screen_text    = "Read access to Provenance"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_provenance_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_provenance_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_provenance_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_provenance_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Provenance.write"
  description            = "Write access to Provenance"
  consent_screen_text    = "Write access to Provenance for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_provenance_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_provenance_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_provenance_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}