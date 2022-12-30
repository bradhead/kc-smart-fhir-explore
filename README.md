# Proof of Concept work for IDAM

Prototyping by Bradley.Head@phsa.ca, Enterprise Architect IDAM.

## Run Docker compose

1. Run docker compose to build and run keycloak with SMART on FHIR extensions.

This includes building a starting point realm, which I have set to phsa. You can change that
in the keycloak/config/realm.json file.

```shell
cd keycloak ; docker compose up -d
```

2. Now login to the newly built Keycloak using the admin user, and go to the realm PHSA.
3. From Clients, select the 'terraform' client in the realm.
4. Select 'Credentials'
5. Hit the 'Regenerate Secret' button, then
6. Copy the Secret to your paste board
7. Create a terraform.tfvars file in the kc-terraform folder.  Refer to the example file provided.
8. Now paste the Secret value from your paste board into your terraform.tfvars file.
9. Now, we can apply the terraform configuraitons that will setup the PHSA realm to have SMART on FHIR settings, scopes, mappers, etc.

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
http://localhost:8080/auth/realms/phsa/account/#/
```