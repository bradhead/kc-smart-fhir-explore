#!/bin/sh
terraform workspace select dev
terraform apply --var-file configuration-dev.tfvars
