resource "keycloak_openid_client_scope" "patient_document_reference_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/DocumentReference.read"
  description            = "Read access to Document References"
  consent_screen_text    = "Read access to Document References for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_document_reference_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_document_reference_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_document_reference_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_catalogentry_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/CatalogEntry.*"
  description            = "Read and Write access to CatalogEntry"
  consent_screen_text    = "Permission to read and write CatalogEntry resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_catalogentry_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_catalogentry_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_catalogentry_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_catalogentry_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/CatalogEntry.read"
  description            = "Read access to CatalogEntry"
  consent_screen_text    = "Permission to read CatalogEntry resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_catalogentry_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_catalogentry_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_catalogentry_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_catalogentry_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/CatalogEntry.write"
  description            = "Write access to CatalogEntry"
  consent_screen_text    = "Permission to write CatalogEntry resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_catalogentry_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_catalogentry_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_catalogentry_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

// -------------------------------------------------------------------------------