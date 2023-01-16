
resource "auth0_client" "smart_client" {
  name            = var.auth0_client_smart_app.name
  description     = "Swiss SMART on FHIR Demo App"
  app_type        = "regular_web"
  oidc_conformant = true
  token_endpoint_auth_method = "client_secret_post"
  callbacks       = var.auth0_client_smart_app.callbacks
  allowed_origins = var.auth0_client_smart_app.allowed_origins
  web_origins     = var.auth0_client_smart_app.web_origins
  grant_types = [
    "authorization_code",
    "refresh_token"
  ]
  jwt_configuration {
    alg = "RS256"
  }
}

resource "auth0_client_grant" "my_client_grant" {
  client_id = auth0_client.my_client.id
  audience  = auth0_resource_server.fhir_resource_server.identifier

  scopes = [
    "email",
    "offline_access",
    "fhirUser"
  ]
}