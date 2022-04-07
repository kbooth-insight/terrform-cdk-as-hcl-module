
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
    
    features {}
}

data "azurerm_client_config" "current" {
}

locals {
    token_command = <<-EOF
        # TOKEN="$(curl -i -X POST \
        #     -d "client_id=${data.azurerm_client_config.current.client_id}" \
        #     -d "client_secret=$${ARM_CLIENT_SECRET}" \
        #     -d "grant_type=client_credentials" \
        #     -d "resource=https://management.azure.com" \
        #     "https://login.microsoftonline.com/${data.azurerm_client_config.current.tenant_id}}/oauth2/token" \
        #     | jq -r .access_token)"

        #     echo $TOKEN > /tmp/.az-token
    EOF
}




resource "null_resource" "this" {

    provisioner "local-exec" {
      command = local.token_command
    }
}

data "local_file"  "token"{
  
  depends_on = [
    null_resource.this
  ]
}

