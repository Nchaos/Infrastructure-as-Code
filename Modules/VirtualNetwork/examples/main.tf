module "resource_group" {
  source      = "../../ResourceGroup"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
  tags        = var.tags
}

module "virtual_network" {
  source              = "../"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  environment         = var.environment
  app_name            = var.app_name
  address_space       = var.address_space
  subnet              = var.subnet
  tags                = var.tags
}
