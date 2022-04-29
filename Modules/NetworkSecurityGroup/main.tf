resource "azurerm_network_security_group" "this" {
  for_each            = var.network_security_groups
  resource_group_name = var.resource_group_name
  location            = each.value["location"]
  name                = each.value["name"]
  tags                = each.value["tags"]

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