resource "keycloak_openid_client_scope" "fhir_user_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "fhirUser"
  description            = "Permission to retrieve current logged-in user"
  consent_consent_screen_text = "Permission to retrieve current logged-in user"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "launch_patient_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "launch/patient"
  description            = "Used by clients to request a patient-scoped access token."
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "online_access_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "online_access"
  description            = "Request a refresh_token that can be used to obtain a new access token to replace an expired one, and that will be usable for as long as the end-user remains online"
  consent_screen_text = "Retain access while you are online"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_all_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/*.read"
  description            = "Read access to all data"
  consent_screen_text =  "Read access to all data for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_allergy_intolerance_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/AllergyIntolerance.read"
  description            = "Read access to Allergies and Intolerances"
  consent_screen_text =  "Read access to Allergies and Intolerances for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_care_plan_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/CarePlan.read"
  description            = "Read access to CarePlan"
  consent_screen_text =  "Read access to Care Plans for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_condition_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Condition.read"
  description            = "Read access to Conditions"
  consent_screen_text =  "Read access to Conditions for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_device_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Device.read"
  description            = "Read access to Devices"
  consent_screen_text =  "Read access to Devices for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_diagnostic_report_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/DiagnosticReport.read"
  description            = "Read access to Diagnostic Reports"
  consent_screen_text =  "Read access to Diagnostic Reports for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_document_reference_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/DocumentReference.read"
  description            = "Read access to Document References"
  consent_screen_text =  "Read access to Document References for the patient"
  include_in_token_scope = true
}
resource "keycloak_openid_client_scope" "patient_encounter_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Encounter.read"
  description            = "Read access to Encounters"
  consent_screen_text =  "Read access to Encounters for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_explanation_benefit_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/ExplanationOfBenefit.read"
  description            = "Read access to Explanation Of Benefits"
  consent_screen_text =  "Read access to Explanation Of Benefits for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_goal_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Goal.read"
  description            = "Read access to Goals"
  consent_screen_text =  "Read access to Goals for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_immunization_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Immunization.read"
  description            = "Read access to Immunizations"
  consent_screen_text =  "Read access to Immunizations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_location_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Location.read"
  description            = "Read access to Locations"
  consent_screen_text =  "Read access to Locations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_medication_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Medication.read"
  description            = "Read access to Medications"
  consent_screen_text =  "Read access to Medications for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_medication_dispense_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/MedicationDispense.read"
  description            = "Read access to Medication Dispenses"
  consent_screen_text =  "Read access to Medication Dispenses for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_medication_request_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/MedicationRequest.read"
  description            = "Read access to Medication Requests"
  consent_screen_text =  "Read access to Medication Requests for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_observation_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Observation.read"
  description            = "Read access to Observations"
  consent_screen_text =  "Read access to Observations for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_organization_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Organization.read"
  description            = "Read access to Organization"
  consent_screen_text =  "Read access to Organization for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_patient_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Patient.read"
  description            = "Read access to Patient"
  consent_screen_text =  "Read access to Patient for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_practitioner_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Practitioner.read"
  description            = "Read access to Practitioner"
  consent_screen_text =  "Read access to Practitioner for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_practitioner_role_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/PractitionerRole.read"
  description            = "Read access to PractitionerRole"
  consent_screen_text =  "Read access to PractitionerRole for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_procedure_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Procedure.read"
  description            = "Read access to Procedures"
  consent_screen_text =  "Read access to Procedures for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_provenance_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/Provenance.read"
  description            = "Read access to Provenance"
  consent_screen_text =  "Read access to Provenance for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_related_persons_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/RelatedPerson.read"
  description            = "Read access to Related Persons"
  consent_screen_text =  "Read access to Related Persons for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_related_persons_all_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/RelatedPerson.*"
  description            = "Full access to Related Persons"
  consent_screen_text =  "Full access to Related Persons for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_related_persons_read_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/RelatedPerson.read"
  description            = "Read access to Related Persons"
  consent_screen_text =  "Read access to Related Persons for the patient"
  include_in_token_scope = true
}

resource "keycloak_openid_client_scope" "patient_related_persons_write_scope" {
  realm_id               = data.keycloak_realm.smart_realm.id
  name                   = "patient/RelatedPerson.write"
  description            = "Write access to Related Persons"
  consent_screen_text =  "Write access to Related Persons for the patient"
  include_in_token_scope = true
}
