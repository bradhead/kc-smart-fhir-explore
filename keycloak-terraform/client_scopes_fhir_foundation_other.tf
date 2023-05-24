// FHIR Foundation Resources
// See https://build.fhir.org/resourcelist.html
//
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "patient_basic_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Basic.read"
  description            = "Read access to Basic"
  consent_screen_text    = "Permission to read Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_basic_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_basic_read.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_basic_read.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_basic_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Basic.write"
  description            = "Write access to Basic"
  consent_screen_text    = "Permission to write Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_basic_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_basic_write.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_basic_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}


resource "keycloak_openid_client_scope" "patient_basic_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Basic.*"
  description            = "Read and Write access to Basic"
  consent_screen_text    = "Permission to read and write Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_basic_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_basic_full.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_basic_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "system_basic_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Basic.read"
  description            = "Read access to Basic"
  consent_screen_text    = "Permission to read Basic"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_basic_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_basic_read.realm_id
  client_scope_id = keycloak_openid_client_scope.system_basic_read.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_basic_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "ssytem/Basic.write"
  description            = "Write access to Basic"
  consent_screen_text    = "Permission to write Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_basic_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_basic_write.realm_id
  client_scope_id = keycloak_openid_client_scope.system_basic_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}


resource "keycloak_openid_client_scope" "system_basic_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Basic.*"
  description            = "Read and Write access to Basic"
  consent_screen_text    = "Permission to read and write Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_basic_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_basic_full.realm_id
  client_scope_id = keycloak_openid_client_scope.system_basic_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_basic_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Basic.read"
  description            = "Read access to Basic"
  consent_screen_text    = "Permission to read Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_basic_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_basic_read.realm_id
  client_scope_id = keycloak_openid_client_scope.user_basic_read.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_basic_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Basic.write"
  description            = "Write access to Basic"
  consent_screen_text    = "Permission to write Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_basic_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_basic_write.realm_id
  client_scope_id = keycloak_openid_client_scope.user_basic_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_basic_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Basic.*"
  description            = "Read and Write access to Basic"
  consent_screen_text    = "Permission to read and write Basic resources"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_basic_full_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_basic_full.realm_id
  client_scope_id = keycloak_openid_client_scope.user_basic_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
// ===============================================================================
resource "keycloak_openid_client_scope" "user_binary_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Binary.read"
  description            = "Read access to Binary resource"
  consent_screen_text    = "Permission to read Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_binary_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_binary_read.realm_id
  client_scope_id = keycloak_openid_client_scope.user_binary_read.id
  name            = "audience-mapper"
  add_to_id_token = falseå

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_binary_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Binary.write"
  description            = "Write access to Binary"
  consent_screen_text    = "Permission to write Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_binary_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_binary_write.realm_id
  client_scope_id = keycloak_openid_client_scope.user_binary_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_binary_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Binary.*"
  description            = "Read and Write access to Binary"
  consent_screen_text    = "Permission to read and write Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_binary_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_binary_full.realm_id
  client_scope_id = keycloak_openid_client_scope.user_binary_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "system_binary_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Binary.read"
  description            = "Read access to Binary"
  consent_screen_text    = "Permission to read Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_binary_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_binary_read.realm_id
  client_scope_id = keycloak_openid_client_scope.system_binary_read.id
  name            = "audience-mapper"
  add_to_id_token = falseå

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_binary_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Binary.write"
  description            = "Write access to Binary"
  consent_screen_text    = "Permission to write Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_binary_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_binary_write.realm_id
  client_scope_id = keycloak_openid_client_scope.system_binary_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_binary_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Binary.*"
  description            = "Read and Write access to Binary"
  consent_screen_text    = "Permission to read and write Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_binary_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_binary_full.realm_id
  client_scope_id = keycloak_openid_client_scope.system_binary_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "patient_binary_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Binary.read"
  description            = "Read access to Binary resource"
  consent_screen_text    = "Permission to read Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_binary_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_binary_read.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_binary_read.id
  name            = "audience-mapper"
  add_to_id_token = falseå

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_binary_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Binary.write"
  description            = "Write access to Binary"
  consent_screen_text    = "Permission to write Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_binary_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_binary_write.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_binary_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_binary_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Binary.*"
  description            = "Read and Write access to Binary"
  consent_screen_text    = "Permission to read and write Binary"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_binary_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_binary_full.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_binary_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================

resource "keycloak_openid_client_scope" "user_bundle_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Bundle.read"
  description            = "Read access to Bundle"
  consent_screen_text    = "Permission to read Bundle resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_bundle_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_bundle_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_bundle_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_bundle_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Bundle.write"
  description            = "Write access to Bundle"
  consent_screen_text    = "Permission to write Bundle resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_bundle_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_bundle_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_bundle_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_bundle_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Bundle.*"
  description            = "Read and Write access to Bundle"
  consent_screen_text    = "Permission to read and write Bundle resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_bundle_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_bundle_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_bundle_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================
resource "keycloak_openid_client_scope" "patient_composition_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Composition.read"
  description            = "Read access to Composition resource"
  consent_screen_text    = "Permission to read Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_composition_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_composition_read.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_composition_read.id
  name            = "audience-mapper"
  add_to_id_token = falseå

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_composition_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Composition.write"
  description            = "Write access to Composition"
  consent_screen_text    = "Permission to write Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_composition_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_composition_write.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_composition_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "patient_composition_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/Composition.*"
  description            = "Read and Write access to Composition"
  consent_screen_text    = "Permission to read and write Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_composition_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_composition_full.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_composition_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "system_composition_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Composition.read"
  description            = "Read access to Composition resource"
  consent_screen_text    = "Permission to read Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_composition_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_composition_read.realm_id
  client_scope_id = keycloak_openid_client_scope.system_composition_read.id
  name            = "audience-mapper"
  add_to_id_token = falseå

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_composition_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Composition.write"
  description            = "Write access to Composition"
  consent_screen_text    = "Permission to write Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_composition_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_composition_write.realm_id
  client_scope_id = keycloak_openid_client_scope.system_composition_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "system_composition_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "system/Composition.*"
  description            = "Read and Write access to Composition"
  consent_screen_text    = "Permission to read and write Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "system_composition_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.system_composition_full.realm_id
  client_scope_id = keycloak_openid_client_scope.system_composition_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "user_composition_read" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Composition.read"
  description            = "Read access to Composition resource"
  consent_screen_text    = "Permission to read Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_composition_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_composition_read.realm_id
  client_scope_id = keycloak_openid_client_scope.user_composition_read.id
  name            = "audience-mapper"
  add_to_id_token = falseå

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_composition_write" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Composition.write"
  description            = "Write access to Composition"
  consent_screen_text    = "Permission to write Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_composition_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_composition_write.realm_id
  client_scope_id = keycloak_openid_client_scope.user_composition_write.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_composition_full" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Composition.*"
  description            = "Read and Write access to Composition"
  consent_screen_text    = "Permission to read and write Composition"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_composition_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_composition_full.realm_id
  client_scope_id = keycloak_openid_client_scope.user_composition_full.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// ===============================================================================
