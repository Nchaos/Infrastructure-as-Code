resource "azurerm_virtual_network" "this" {
  address_space       = var.address_space
  bgp_community       = var.bgp_community
  dns_servers         = var.dns_servers
  location            = var.location
  name                = "vnet-${var.environment}-${var.app_name}"
  resource_group_name = var.resource_group_name
  subnet              = var.subnet
  tags                = var.tags

  dynamic "ddos_protection_plan" {
    for_each = var.ddos_protection_plan
    content {
      enable = ddos_protection_plan.value["enable"]
      id     = ddos_protection_plan.value["id"]
    }
  }
}