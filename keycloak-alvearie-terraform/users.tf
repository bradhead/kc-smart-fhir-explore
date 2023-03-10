resource "keycloak_user" "user" {
  realm_id = data.keycloak_realm.lra_realm.id
  username = "alice"
  enabled = true
  first_name = "Alice"
  last_name = "Fehr"
  attributes = {
    resourceId = "Patient1"
  }
  initial_password {
    value = "password"
    temporary = true
  }
}

resource "keycloak_group_memberships" "group_members" {
  realm_id = data.keycloak_realm.lra_realm.id
  group_id = keycloak_group.fhir_user_group.id

  members  = [
    keycloak_user.user.username
  ]
}