resource "azurerm_log_analytics_workspace" "this" {
  for_each            = var.log_analytics_workspaces
  resource_group_name = var.resource_group_name

  daily_quota_gb                    = each.value["daily_quota_gb"]
  internet_ingestion_enabled        = each.value["internet_ingestion_enabled"]
  internet_query_enabled            = each.value["internet_query_enabled"]
  location                          = each.value["location"]
  name                              = each.value["name"]
  sku                               = each.value["sku"]
  retention_in_days                 = each.value["retention_in_days"]
  reservation_capcity_in_gb_per_day = (each.value["sku"] != "CapacityReservation" ? null : each.value["reservation_capacity_in_gb_per_day"])
  tags                              = each.value["tags"]

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
