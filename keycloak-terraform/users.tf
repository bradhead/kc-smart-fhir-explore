resource "keycloak_user" "user1" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "alice"
  enabled    = true
  first_name = "Alice"
  last_name  = "Fehr"
  attributes = {
    practitionerId     = "1234",
    practitionerRole   = "doctor",
    practitionerStatus = "active",
    expertise          = "101##136##171",
    fhirUser           = "https://fhir.server/Practitioner/1234494959",
    qualification      = "[{ \"class\":\"MD\", \"license_id\":\"12345\", \"status\":\"active\", \"start_date\":\"20230101\", \"msp_id\":\"2292993\"} , { \"class\":\"PHARM\", \"license_id\":\"34567\", \"status\":\"active\", \"start_date\":\"20221101\", \"msp_id\":\"333995\"}  ]",
  }
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "user1_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.user1.id

  role_ids = [
    keycloak_role.client_role_md.id
  ]
}

resource "keycloak_user" "user2" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "bob"
  enabled    = true
  first_name = "Bob"
  last_name  = "Fehr"
  attributes = {
    practitionerId     = "1234",
    practitionerRole   = "moa",
    practitionerStatus = "active",
    expertise          = "S31##515##168",
    fhirUser           = "https://fhir.server/Practitioner/012345689",
    qualification      = "[{ \"code\":\"RN\", \"id\":\"3939393\", \"status\":\"active\", \"period_start\":\"20230204\", \"msp_id\":\"90999339\"} ]",
    endorser_data      = "CPN.00063660.BC.PRS##CPN.00099999.BC.PRS"
  }
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "user2_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.user2.id

  role_ids = [
    keycloak_role.client_role_moa.id
  ]
}

//-----------------------------------------  AUTOMATED TESTING USERS -------------------
resource "keycloak_user" "test_user1" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test1"
  enabled    = true
  first_name = "Test1"
  last_name  = "MD"
  initial_password {
    value     = "password"
    temporary = false
  }

}
resource "keycloak_user_roles" "test_user1_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.test_user1.id

  role_ids = [
    keycloak_role.client_role_md.id
  ]
}

resource "keycloak_user" "test_user2" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test2"
  enabled    = true
  first_name = "Test2"
  last_name  = "MOA"
  attributes = {
    endorser_data = "CPN.00063660.BC.PRS##CPN.00099999.BC.PRS"
  }
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "test_user2_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.test_user2.id

  role_ids = [
    keycloak_role.client_role_moa.id
  ]
}

resource "keycloak_user" "test_user3" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test3"
  enabled    = true
  first_name = "Test3"
  last_name  = "RNP"
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "test_user3_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.test_user3.id

  role_ids = [
    keycloak_role.client_role_rnp.id
  ]
}

resource "keycloak_user" "test_user4" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test4"
  enabled    = true
  first_name = "Test4"
  last_name  = "PRACTITIONER-MD"
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "test_user4_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.test_user4.id

  role_ids = [
    keycloak_role.client_role_practitioner.id,
    keycloak_role.client_role_md.id
  ]
}

resource "keycloak_user" "test_user5" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test5"
  enabled    = true
  first_name = "Test5"
  last_name  = "PRACTITIONER"
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "test_user5_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.test_user5.id

  role_ids = [
  keycloak_role.client_role_practitioner.id]
}

resource "keycloak_user" "test_user6" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test6"
  enabled    = true
  first_name = "Test6"
  last_name  = "NOT-A-PRACTITIONER"
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user" "test_user7" {
  realm_id   = data.keycloak_realm.realm.id
  username   = "test7"
  enabled    = true
  first_name = "Test7"
  last_name  = "MOA Not Endorsed"
  attributes = {
    endorser_data = ""
  }
  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user_roles" "test_user7_roles" {
  realm_id = data.keycloak_realm.realm.id
  user_id  = keycloak_user.test_user7.id

  role_ids = [
  keycloak_role.client_role_moa.id]
}


resource "keycloak_group_memberships" "group_members" {
  realm_id = data.keycloak_realm.realm.id
  group_id = keycloak_group.fhir_user_group.id

  members = [
    keycloak_user.user1.username,
    keycloak_user.user2.username,
    keycloak_user.test_user1.username,
    keycloak_user.test_user2.username,
    keycloak_user.test_user3.username,
    keycloak_user.test_user4.username
  ]
}


