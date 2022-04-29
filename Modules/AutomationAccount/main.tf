resource "azurerm_automation_account" "this" {
  for_each            = var.automation_accounts
  resource_group_name = var.resource_group_name
  location            = each.value["location"]
  name                = each.value["name"]
  sku_name            = each.value["sku_name"]
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
