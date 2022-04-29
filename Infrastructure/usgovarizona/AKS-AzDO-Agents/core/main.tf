module "resource_group" {
  source      = "../../../../Modules/ResourceGroup"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
  tags        = var.tags
}

module "container_registry" {
  source              = "../../../../Modules/ContainerRegistry"
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  environment         = var.environment
  app_name            = var.app_name
  admin_enabled       = var.admin_enabled
  container_sku       = var.container_sku
  tags                = var.tags
}

module "key_vault" {
  source                          = "../../../../Modules/KeyVault"
  app_name                        = var.app_name
  location                        = module.resource_group.resource_group_location
  resource_group_name             = module.resource_group.resource_group_name
  environment                     = var.environment
  enable_rbac_authorization       = var.enable_rbac_authorization
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  purge_protection_enabled        = var.purge_protection_enabled
  key_vault_sku                   = var.key_vault_sku
  soft_delete_retention_days      = var.soft_delete_retention_days
  tags                            = var.tags
}