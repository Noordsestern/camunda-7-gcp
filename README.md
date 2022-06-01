# Camunda 7 for Google Cloud
This is a small repository with a customized Camunda 7 being deployed in Google Cloud. 

# Prerequisites
You require a Google Cloud account and have access to a Google Cloud Project: https://console.cloud.google.com/

I use VS Code.

# Deploy Camunda 7 in Google Cloud Run
In order to deploy this Camunda 7 you need the following command:
`gcloud run deploy --source .`

In case gcloud is not connected to your local workspace, yet, it will prompt you the commands to do so.

# Usage
Check `configuration/default.yml` for configuration, esspecially setting up admin password. By default admin user/password is `demo/demo` but you may override the properties.