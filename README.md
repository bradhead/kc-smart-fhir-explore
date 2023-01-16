# Proof of Concept work for IDAM

Prototyping by Bradley.Head@phsa.ca, Enterprise Architect IDAM.

## Run Docker compose

1. Run docker compose to build and run keycloak with SMART on FHIR extensions.

This includes building a starting point realm, which I have set to 'phsa'. You can change that
in the keycloak/config/realm.json file.

```shell
cd kc_k ; docker compose up -d
```

2. Now login to the newly built Keycloak using the admin user, and go to the realm PHSA.
3. From Clients, select the 'terraform' client in the realm.
4. Select 'Service Account Roles' tab.
5. Under 'Client Roles', choose 'realm-management', and select 'realm-admin' from the list of Available Roles and click 'Add selected' button. Save
6. Now, Select 'Credentials' tab of the terraform client.
7. Tap the 'Regenerate Secret' button, then
8. Copy the Secret to your paste board
9. Create a terraform.tfvars file in the kc-terraform folder.  Refer to the example file provided.
10. Now paste the Secret value from your paste board into your terraform.tfvars file.
11. Now, we can apply the terraform configurations that will setup the PHSA realm to have SMART on FHIR settings, scopes, mappers, etc.

```shell
cd kc-terraform ; terraform init

terraform plan -var-file terraform.tfvars

terraform apply -var-file terraform.tfvars
```

10. Now, Keycloak should be setup with all the SMART on FHIR scopes, etc.

## Running the test client app

Next try running the swiss-app.

Open a browser and go to:

```shell
 http://localhost:4200
 ```

## Viewing the Keycloak Admin Console

Open a browser and go to:

```shell
http://localhost:8080
```

### Viewing the KC Account console for a user

```shell
http://localhost:8080/realms/phsa/account/#/
```