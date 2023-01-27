# Keycloak with Alvearie SMART on FHIR extensions

This is a Docker build that uses Keycloak 18.0.2 legacy edition and builds into it the Alvearie project (IBM) SMART on FHIR exensions.

## How to build

```shell
docker compose up
```

This installs a non-prouction docker instance of keycloak with the SMART on FHIR extensions.
It does not provision any of the SMART scopes or configurations for a realm. That will come by way of
terraform configurations.

### Realm loaded

The docker compose exeution, loads the realm:

```code
./realm/lra-realm.json
```

If you are setting this up on production-grade server, you woul import this, or create is manually, but also create the primary terraform client to get started.

It loads a realm named 'lra', which has a client 'terraform'. That client is then configured manually to be a service account with admin privileges in order for terraform scripts to run. The scripts need the client secret.

## Steps to configure the terraform client

1. Login as admin.
2. Select the Lra realm.
3. Go to Clients -> terraform, or create this client and set to Confidential.
4. Under Terraform client, click on 'Credentials' tab.
5. Tap 'Regenerate Secret' button and copy the secret and save it for the terraform script configurations.
6. Under the Terraform client, tap on 'Service Account Roles'
7. Under Client Roles, scroll on the list and select 'realm management'
8. Under 'Available Roles' options, select 'realm admin' to add that to Assigned Roles.

The terraform client now has the setting needed to execute the terraform scripts, under the folder above
called 'keyclaok-alvearie-terraform'. See README there for more details.
