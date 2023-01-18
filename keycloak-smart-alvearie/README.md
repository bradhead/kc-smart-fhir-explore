# Proof of Concept work for IDAM

Prototyping by Bradley.Head@phsa.ca, Enterprise Architect IDAM.

## Run Docker compose

Run docker compose to build and run keycloak with SMART on FHIR extensions.

This includes building a starting point realm, which I have set to 'phsa'. You can change that
in the keycloak/config/realm.json file. need to build the alvearie extensions first.

```shell
cd alvearie-provider
sh build.sh
cd ..
docker compose up -d
```

## Setup to Run Terraform configurations

1. Now login to the newly built Keycloak using the admin user, and go to the realm PHSA.
2. From Clients, select the 'terraform' client in the realm.
3. Select 'Service Account Roles' tab.
4. Under 'Client Roles', choose 'realm-management', and select 'realm-admin' from the list of Available Roles and click 'Add selected' button. Save
5. Now, Select 'Credentials' tab of the terraform client.
6. Tap the 'Regenerate Secret' button, then
7. Copy the Secret to your paste board

## Run Terraform

 Now, we can apply the terraform configurations that will setup the PHSA realm to have SMART on FHIR settings, scopes, mappers, etc.

 In the directory named keycloak-terraform-smart:

1. Copy the configuration.tfvars.example file to configuration.tfvars
2. Create a terraform.tfvars file in the kc-terraform folder.  Refer to the example file provided.
3. Now paste the Secret value from your paste board (from the Keycloak terraform client secret value) into the configuration.tfvars file.

You are now ready to run terraform.

```shell
cd keycloak-terraform-smart ; terraform init

terraform plan -var-file terraform.tfvars

terraform apply -var-file terraform.tfvars
```

 Now, Keycloak should be setup with all the SMART on FHIR scopes, etc.


## Viewing the Keycloak Admin Console

Open a browser and go to:

```shell
http://localhost:8080
```
