resource "azurerm_virtual_wan" "this" {
  resource_group_name               = var.resource_group_name
  for_each                          = var.virtual_wans
  allow_branch_to_branch_traffic    = each.value["allow_branch_to_branch_traffic"]
  disable_vpn_encryption            = each.value["disable_vpn_encryption"]
  location                          = each.value["location"]
  name                              = each.value["name"]
  office365_local_breakout_category = each.value["office365_local_breakout_category"]
  type                              = each.value["type"]
  tags                              = each.value["tags"]
}
