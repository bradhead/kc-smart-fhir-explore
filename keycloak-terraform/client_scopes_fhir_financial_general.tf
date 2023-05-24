resource "keycloak_openid_client_scope" "user_account_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Account.read"
  description            = "Read access to Accounts"
  consent_screen_text    = "Permission to read Accounts that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_account_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_account_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_account_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_account_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Account.write"
  description            = "Write access to Accounts"
  consent_screen_text    = "Permission to write Accounts that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_account_write_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_account_write_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_account_write_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}

resource "keycloak_openid_client_scope" "user_account_all_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/Account.*"
  description            = "Read and Write access to Accounts"
  consent_screen_text    = "Permission to read and write Accounts that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_account_all_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_account_all_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_account_all_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------

resource "keycloak_openid_client_scope" "user_chargeitem_full_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ChargeItem.*"
  description            = "Read and Write access to ChargeItem"
  consent_screen_text    = "Permission to read and write ChargeItem resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_chargeitem_full_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_chargeitem_full_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_chargeitem_full_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_chargeitem_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ChargeItem.read"
  description            = "Read access to ChargeItem"
  consent_screen_text    = "Permission to read ChargeItem resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_chargeitem_read_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_chargeitem_read_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_chargeitem_read_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
resource "keycloak_openid_client_scope" "user_chargeitem_write_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ChargeItem.write"
  description            = "Write access to ChargeItem"
  consent_screen_text    = "Permission to write ChargeItem resources that the current user can access"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_chargeitem_write_audience_mapper" {
  realm_id                 = keycloak_openid_client_scope.user_chargeitem_write_scope.realm_id
  client_scope_id          = keycloak_openid_client_scope.user_chargeitem_write_scope.id
  name                     = "audience-mapper"
  add_to_id_token          = false
  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------
resource "keycloak_openid_client_scope" "patient_explanation_benefit_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "patient/ExplanationOfBenefit.read"
  description            = "Read access to Explanation Of Benefits"
  consent_screen_text    = "Read access to Explanation Of Benefits for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "patient_explanation_benefit_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.patient_explanation_benefit_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.patient_explanation_benefit_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}


resource "keycloak_openid_client_scope" "user_explanation_benefit_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/ExplanationOfBenefit.read"
  description            = "Read access to Explanation Of Benefits"
  consent_screen_text    = "Read access to Explanation Of Benefits for the current user"
  include_in_token_scope = true
}

resource "keycloak_openid_audience_protocol_mapper" "user_explanation_benefit_read_audience_mapper" {
  realm_id        = keycloak_openid_client_scope.user_explanation_benefit_read_scope.realm_id
  client_scope_id = keycloak_openid_client_scope.user_explanation_benefit_read_scope.id
  name            = "audience-mapper"
  add_to_id_token = false

  included_custom_audience = var.keycloak_environment.custom_audience
}
// -------------------------------------------------------------------------------