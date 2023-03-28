resource "keycloak_user" "user1" {
  realm_id = data.keycloak_realm.lra_realm.id
  username = "alice"
  enabled = true
  first_name = "Alice"
  last_name = "Fehr"
 attributes = {
    practitionerId = "12345",
    practitionerSpecialty= "general",
    practitionerLicense = "123456",
    practitionerRole = "doctor",
    practitionerStatus = "active"
  }
  initial_password {
    value = "password"
    temporary = false
  }
}

resource "keycloak_user" "user2" {
  realm_id = data.keycloak_realm.lra_realm.id
  username = "bob"
  enabled = true
  first_name = "Bob"
  last_name = "Fehr"
  attributes = {
    practitionerId = "23456",
    practitionerRole = "moa",
    practitionerStatus = "active"
  }
  initial_password {
    value = "password"
    temporary = false
  }
}

resource "keycloak_group_memberships" "group_members" {
  realm_id = data.keycloak_realm.lra_realm.id
  group_id = keycloak_group.fhir_user_group.id

  members  = [
    keycloak_user.user1.username,
    keycloak_user.user2.username
  ]
}