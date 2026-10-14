terraform {
  required_version = ">= 1.15.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=5.9.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "networking" {
  source   = "./modules/network"
  for_each = var.networks

  # Pipeline se aane wale environment var ko resource name me jod rahe hain
  rg_name        = "${each.value.rg_name}-${var.environment}"
  location       = each.value.location
  vnet_name      = "${each.value.vnet_name}-${var.environment}"
  vnet_address   = each.value.vnet_address
  subnet_name    = each.value.subnet_name
  subnet_address = each.value.subnet_address
}

output "deployed_vnet_ids" {
  value = { for k, v in module.networking : k => v.vnet_id }
}