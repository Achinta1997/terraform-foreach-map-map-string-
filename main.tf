terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
}

resource "azurerm_resource_group" "RG" {
  for_each = var.resource_group
  name = each.key
  location = each.value
}

resource "azurerm_storage_account" "STG" {
    for_each = var.storage_account
    name = each.value.name
    resource_group_name = each.value.rg_name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
    depends_on = [ azurerm_resource_group.RG ]
}
#1. foreach list ke support korena
#2. for_each map ke support kore
#3. for_each set ke support kore

