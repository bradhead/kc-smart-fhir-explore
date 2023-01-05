data "keycloak_realm" "this-realm" {
  realm = var.keycloak_environment.realm
}