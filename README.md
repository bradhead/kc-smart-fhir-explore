# Proof of Concept work for IDAM

Prototyping by Bradley.Head@phsa.ca, Enterprise Architect IDAM.

# Run Docker compose

'docker compose up

Now login to the newly built Keycloak using the admin user, and go to the terraform client in the realm created
and regenerate the client secret. Then copy that into the terraform.tfvars file. See the example tfvars file.

``cd kc-terraform ; terraform init

` terraform plan -var-file terraform.tfvars

` terraform apply -var-file terraform.tfvars

Now, Keycloak should be setup with all the SMART on FHIR scopes, etc. 

Next try running the swiss-app,


` http://localhost:4200

and try to login.  
