terraform {
  required_version = ">= 0.12.0"

  backend "azurerm" {
    environment = "usgovernment"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.40.0"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = null
      recover_soft_deleted_key_vaults = null
    }
  }
  environment = "usgovernment"
}
