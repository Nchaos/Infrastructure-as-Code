
module "resource_group" {
  source      = "../../ResourceGroup"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
  tags        = var.tags
}

module "container_registry" {
  source              = "../"
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  environment         = var.environment
  app_name            = var.app_name
  tags                = var.tags
  container_sku       = var.container_sku
  georeplications     = var.georeplications
}
