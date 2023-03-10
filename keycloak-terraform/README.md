# Keycloak setup

In order to configure Keycloak, you will need to have installed [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli).

## One Time Keycloak configuration

The following steps need to be run by a realm administrator in the Keycloak realm prior to using Terraform:

1. Authenticate with the Keycloak as admin
2. Navigate to Clients
3. Select 'terraform' Client
4. Select Service Account Roles tab
5. Choose 'Realm-Management' from Client Roles options.
6. From the Available Roles, select "realm-admin"
7. Click on  "Add selected" button to assign this role
8. Next, you will need to client secret for this client for Terraform configuration.
    - Select 'Credentials' tab for Client 'terraform'
    - Click on 'Regenerate Secret' button and finally,
    - Copy the secret to the pasteboard for use in Terraform config.

## Run

### Running the Keycloak Terraform Provider

You will need golang

` brew install golang `

```console
terraform init
terraform apply -var-file configuration-{context}.tfvars
```

See configuration.tfvars.example for an example configuration file.

Above, the conventions is  {context} is one of 'dev', 'test', 'prod', or 'local'

## Reference

https://medium.com/codex/how-to-configure-keycloak-with-terraform-for-local-development-6451391498e1