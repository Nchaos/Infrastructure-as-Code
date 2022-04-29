terraform {
  required_version = ">= 0.12.0"

  backend "azurerm" {
    environment = "usgovernment"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.50.0"
    }
  }
}

provider "azurerm" {
  features {

    log_analytics_workspace {
      permanently_delete_on_destroy = true
    }

  }

  environment = "usgovernment"
}

module "resource_group" {
  source              = "../../ResourceGroup"
  environment         = var.environment
  project             = var.project
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "storage_account" {
  source              = "../../StorageAccount"
  environment         = var.environment
  project             = var.project
  delimiter           = var.delimiter
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  storage_name                     = var.storage_name
  storage_access_tier              = var.storage_access_tier
  storage_account_kind             = var.storage_account_kind
  storage_account_replication_type = var.storage_account_replication_type
  storage_account_tier             = var.storage_account_tier
}

module "log_analytics_workspace" {
  source              = "../../LogAnalyticsWorkspace"
  environment         = var.environment
  project             = var.project
  delimiter           = var.delimiter
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  law_name            = var.law_name
}

module "log_analytics_linked_storage_account" {
  source                = "../"
  resource_group_name   = module.resource_group.name
  location              = module.resource_group.location
  workspace_resource_id = module.log_analytics_workspace.id
  storage_account_ids   = [module.storage_account.id]
}
