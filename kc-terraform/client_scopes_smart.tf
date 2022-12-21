resource "keycloak_openid_client_scope" "encounter_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Encounter.read"
  description            = "Provides patient access to Encounter data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "encounter_user_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Encounter.read"
  description            = "Provides user access to Encounter data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "immunization_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Immunization.read"
  description            = "Provides patient access to Immunization data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "immunization_user_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Immunization.read"
  description            = "Provides user access to Immunization data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "laboratory_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Laboratory.read"
  description            = "Provides patient access to Laboratory data"
  include_in_token_scope = true
}
resource "keycloak_openid_client_scope" "laboratory_user_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Laboratory.read"
  description            = "Provides user access to Laboratory data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "medication_dispense_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/MedicationDispense.read"
  description            = "Provides patient access to Medication Dispense data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "medication_dispense_user_read_scope" {
  realm_id               = data.keycloak_realm.realm.id
  name                   = "user/MedicationDispense.read"
  description            = "Provides user access to Medication Dispense data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "observation_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Observation.read"
  description            = "Provides patient access to Observation data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "observation_user_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Observation.read"
  description            = "Provides user access to Observation data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Patient.read"
  description            = "Provides patient access to Patient data"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_user_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "user/Patient.read"
  description            = "Provides user access to Patient data"
  include_in_token_scope = true
}
