data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "this" {
  access_policy                   = var.access_policy
  enable_rbac_authorization       = var.enable_rbac_authorization
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  location                        = var.location
  name                            = "akv-${var.environment}-${var.app_name}"
  purge_protection_enabled        = var.purge_protection_enabled
  resource_group_name             = var.resource_group_name
  sku_name                        = var.key_vault_sku
  soft_delete_retention_days      = var.soft_delete_retention_days
  tags                            = var.tags
  tenant_id                       = data.azurerm_client_config.current.tenant_id

  lifecycle {
    ignore_changes = all
  }

  dynamic "contact" {
    for_each = var.contact
    content {
      email = contact.value["email"]
      name  = contact.value["name"]
      phone = contact.value["phone"]
    }
  }

  dynamic "network_acls" {
    for_each = var.network_acls
    content {
      bypass                     = network_acls.value["bypass"]
      default_action             = network_acls.value["default_action"]
      ip_rules                   = network_acls.value["ip_rules"]
      virtual_network_subnet_ids = network_acls.value["virtual_network_subnet_ids"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}