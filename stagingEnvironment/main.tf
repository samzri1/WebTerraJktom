terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.58.0"
    }
  }
}

provider "azurerm" {
   subscription_id = var.subscription_id
   client_id = var.client_id
   client_secret = var.client_secret
   tenant_id = var.tenant_id
   skip_provider_registration = true
   features {}
}

module "stage" {
    source = "https://github.com/samzri1/WebTerraJktom/"
    environment = var.environment
}
