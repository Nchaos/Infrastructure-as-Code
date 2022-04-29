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
  features {}
  environment = "usgovernment"
}

module "resource_group" {
  source              = "../../ResourceGroup"
  environment         = var.environment
  project             = var.project
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "virtual_network" {
  source      = "../../VirtualNetwork"
  environment = var.environment
  project     = var.project

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
}

module "virtual_network_subnet" {
  source      = "../../VirtualNetworkSubnet"
  environment = var.environment
  project     = var.project

  resource_group_name           = module.resource_group.name
  location                      = module.resource_group.location
  virtual_network_name          = module.virtual_network.name
  virtual_network_address_space = module.virtual_network.address_space

  subnet_address_prefixes = var.subnet_address_prefixes
}

module "public_ip" {
  source      = "../../PublicIp"
  environment = var.environment
  project     = var.project
  delimiter   = var.delimiter

  location            = module.resource_group.location
  resource_group_name = module.resource_group.name

  public_ip_name              = var.public_ip_name
  public_ip_sku               = var.public_ip_sku
  public_ip_allocation_method = var.public_ip_allocation_method
  public_ip_ip_version        = var.public_ip_ip_version
}

module "application_gateway" {
  source      = "../"
  environment = var.environment
  project     = var.project
  delimiter   = var.delimiter

  location             = module.resource_group.location
  resource_group_name  = module.resource_group.name
  gateway_subnet_id    = module.virtual_network_subnet.id[0]
  public_ip_address_id = module.public_ip.id
  virtual_network_name = module.virtual_network.name

  app_gw_tier             = var.app_gw_tier
  app_gw_sku              = var.app_gw_sku
  app_gw_capacity         = var.app_gw_capacity
  backend_port            = var.backend_port
  backend_protocol        = var.backend_protocol
  backend_request_timeout = var.backend_request_timeout
  cookie_based_affinity   = var.cookie_based_affinity
  frontend_port           = var.frontend_port
  http_listener_protocol  = var.http_listener_protocol
  routing_rule_type       = var.routing_rule_type
}
