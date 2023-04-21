resource "keycloak_user" "user1" {
  realm_id = data.keycloak_realm.realm.id
  username = "alice"
  enabled = true
  first_name = "Alice"
  last_name = "Fehr"
 attributes = {
    practitionerId = "1234",
    practitionerRole = "doctor",
    practitionerStatus = "active",
    expertise = "101##136##171",
    fhirUser= "https://fhir.server/Practitioner/1234494959",
    qualification = "[{ \"class\":\"MD\", \"license_id\":\"12345\", \"status\":\"active\", \"start_date\":\"20230101\", \"msp_id\":\"2292993\"} , { \"class\":\"PHARM\", \"license_id\":\"34567\", \"status\":\"active\", \"start_date\":\"20221101\", \"msp_id\":\"333995\"}  ]",
  }
  initial_password {
    value = "password"
    temporary = false
  }
}

resource "keycloak_user" "user2" {
  realm_id = data.keycloak_realm.realm.id
  username = "bob"
  enabled = true
  first_name = "Bob"
  last_name = "Fehr"
  attributes = {
    practitionerId = "1234",
    practitionerRole = "moa",
    practitionerStatus = "active",
    expertise = "S31##515##168",
    fhirUser= "https://fhir.server/Practitioner/012345689",
    qualification = "[{ \"code\":\"RN\", \"id\":\"3939393\", \"status\":\"active\", \"period_start\":\"20230204\", \"msp_id\":\"90999339\"} ]",
  }
  initial_password {
    value = "password"
    temporary = false
  }
}

resource "keycloak_group_memberships" "group_members" {
  realm_id = data.keycloak_realm.realm.id
  group_id = keycloak_group.fhir_user_group.id

  members  = [
    keycloak_user.user1.username,
    keycloak_user.user2.username
  ]
}