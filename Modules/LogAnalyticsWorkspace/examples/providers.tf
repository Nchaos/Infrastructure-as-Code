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
