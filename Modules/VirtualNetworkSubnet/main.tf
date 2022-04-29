resource "azurerm_subnet" "this" {
  for_each             = var.subnets
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = each.value["address_prefixes"]
  name                 = each.value["name"]
}