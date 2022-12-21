data "keycloak_realm" "smart_realm" {
  realm = var.keycloak_environment.realm
}