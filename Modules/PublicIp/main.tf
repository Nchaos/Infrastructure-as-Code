resource "azurerm_public_ip" "this" {
  for_each            = var.public_ips
  resource_group_name = var.resource_group_name
  allocation_method   = each.value["allocation_method"]
  name                = each.value["name"]
  location            = each.value["location"]
  sku                 = each.value["sku"]
  tags                = each.value["tags"]
  zones               = each.value["zones"]
}
