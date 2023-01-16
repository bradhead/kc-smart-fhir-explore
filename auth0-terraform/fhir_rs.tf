resource "auth0_resource_server" "fhir_resource_server" {
  name       = "SMART on FHIR Resource Server"
  identifier = var.auth0_client_smart_app.audience

  scopes {
    value       = "fhirUser"
    description = "The fhir user during app launch"
  }

  scopes {
    value       = "patient/Patient.*"
    description = "Full patient resource access"
  }
    scopes {
    value       = "patient/launch"
    description = "patient launch"
  }
}

