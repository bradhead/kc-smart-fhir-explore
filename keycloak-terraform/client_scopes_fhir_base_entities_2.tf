
resource "keycloak_openid_client_scope" "user_biological_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/BiologicallyDerivedProduct.read"
  description            = "Read access to BiologicallyDerivedProduct"
  consent_screen_text    = "Permission to read BiologicallyDerivedProduct resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_biological_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_biological_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_biological_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_biological_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/BiologicallyDerivedProduct.write"
  description            = "Write access to BiologicallyDerivedProduct"
  consent_screen_text    = "Permission to write BiologicallyDerivedProduct resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_biological_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_biological_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_biological_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_biological_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/BiologicallyDerivedProduct.*"
  description            = "Read and Write access to BiologicallyDerivedProduct"
  consent_screen_text    = "Permission to read and write BiologicallyDerivedProduct resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_biological_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_biological_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_biological_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_device_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Device.read"
  description            = "Read access to Devices"
  consent_screen_text    = "Read access to Devices for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_device_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_device_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_device_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_device_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Device.write"
  description            = "Write access to Devices"
  consent_screen_text    = "Write access to Devices for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_device_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_device_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_device_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "patient_device_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Device.*"
  description            = "Full Read/Write access to Devices"
  consent_screen_text    = "Full Read/Write access to Devices for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_device_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_device_full_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_device_full_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
