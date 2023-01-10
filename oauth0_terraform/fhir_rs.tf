resource "auth0_resource_server" "fhir_resource_server" {
  name       = "SMART on FHIR Resource Server"
  identifier = var.auth0_client_smart_app.audience

  scopes {
    value       = "create:foo"
    description = "Create foos"
  }

  scopes {
    value       = "create:bar"
    description = "Create bars"
  }
}

