#!bin/sh
terraform workspace select local
terraform apply --var-file configuration-local.tfvars