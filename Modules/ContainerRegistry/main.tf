resource "azurerm_container_registry" "this" {
  admin_enabled                 = var.admin_enabled
  location                      = var.location
  name                          = "cr${var.environment}${var.app_name}"
  network_rule_set              = var.network_rule_set
  public_network_access_enabled = var.public_network_access_enabled
  georeplications               = var.container_sku == "Premium" ? var.georeplications : null
  quarantine_policy_enabled     = var.quarantine_policy_enabled
  resource_group_name           = var.resource_group_name
  retention_policy              = var.retention_policy
  sku                           = var.container_sku
  trust_policy                  = var.trust_policy
  tags                          = var.tags
}