terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.77.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.45.0"
    }
    azuredevops = {
    source = "microsoft/azuredevops"
    version = "0.10.0"
    }
  }
}
 
provider "azurerm" {
  features{
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

resource "azurerm_resource_group" "resource_grp" {
  for_each = { for rg in var.resource_groups : rg.name => rg }

  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags
}

resource "azurerm_storage_account" "storage_accounts" {
  for_each = { for sa in var.storage_accounts : sa.name => sa }

  name                     = each.value.name
  resource_group_name      = each.value.resource_group
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  tags                     = each.value.tags
}



  
  

