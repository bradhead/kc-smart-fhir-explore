# Swiss-app

A tester app that behaves like an SMART on FHIR client application using OIDC public code flow.
The client is defined in the terraform configurations for KC.

## Running

```code
docker compose up --force-recreate --remove-orphans -d
```

## Editing requested scopes

1. Open the docker-compose.yml file here, and
2. Add or remove scopes from the environment variable SCOPES
3. Run docker compose command as shown above.
