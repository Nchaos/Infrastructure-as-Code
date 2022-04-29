resource "azurerm_virtual_hub" "this" {
  resource_group_name = var.resource_group_name
  for_each            = var.virtual_hubs
  address_prefix      = each.value["address_prefix"]
  location            = each.value["location"]
  name                = each.value["name"]
  sku                 = each.value["sku"]
  tags                = each.value["tags"]

  virtual_wan_id = var.virtual_wan_id

  dynamic "route" {
    for_each = var.route
    content {
      address_prefixes    = route.value["address_prefixes"]
      next_hop_ip_address = route.value["next_hop_ip_address"]
    }
  }
}
