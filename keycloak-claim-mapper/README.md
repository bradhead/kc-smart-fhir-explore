# An example custom protocol mapper

This example represents an example where you would augment claims into a token where this claim does not exist in the base account or base identity using for the keycloak account.

For example, this could call out to a provider registry or other authoritative source of truth to determine if the provider in question has any restrictions or sanctions, or whether they are still licensed. This would then inject a claim that says they are 'member in good standing' based on the retrieved claim.  

The Resource Server would then inspect the bearer token and have a policy enforcement coded that says that if the license status is not what we expect then the transaction would be denied -- i.e. a 401 Unauthorized would be returned by the API.

## Build

`mvn clean package`

## Deploy

## Reference

<https://medium.com/@pavithbuddhima/how-to-add-custom-claims-to-jwt-tokens-from-an-external-source-in-keycloak-52bd1ff596d3>
