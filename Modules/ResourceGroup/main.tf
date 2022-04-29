resource "azurerm_resource_group" "this" {
  location = var.location
  name     = "rg-${var.environment}-${var.app_name}"
  tags     = var.tags
}