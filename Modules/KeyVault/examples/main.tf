module "resource_group" {
  source      = "../../ResourceGroup"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
  tags        = var.tags
}

module "key_vault" {
  source                          = "../"
  app_name                        = var.app_name
  enable_rbac_authorization       = var.enable_rbac_authorization
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  environment                     = var.environment
  location                        = module.resource_group.resource_group_location
  purge_protection_enabled        = var.purge_protection_enabled
  resource_group_name             = module.resource_group.resource_group_name
  key_vault_sku                   = var.key_vault_sku
  soft_delete_retention_days      = var.soft_delete_retention_days
  tags                            = var.tags
}
