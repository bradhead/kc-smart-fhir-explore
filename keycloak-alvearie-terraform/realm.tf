data "keycloak_realm" "lra_realm" {
  realm = var.keycloak_environment.realm
}