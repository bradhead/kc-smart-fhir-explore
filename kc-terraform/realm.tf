data "keycloak_realm" "smart_realm" {
  realm = var.environment.realm
}