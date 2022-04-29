resource "azurerm_app_service_plan" "this" {
  for_each                     = var.app_service_plans
  resource_group_name          = var.resource_group_name
  app_service_environment_id   = each.value["app_service_environment_id"]
  is_xenon                     = each.value["is_xenon"]
  kind                         = each.value["kind"]
  location                     = each.value["location"]
  maximum_elastic_worker_count = each.value["maximum_elastic_worker_count"]
  name                         = each.value["name"]
  per_site_scaling             = each.value["per_site_scaling"]
  reserved                     = each.value["reserved"]
  tags                         = each.value["tags"]

  sku {
    capacity = each.value["sku_capacity"]
    size     = each.value["sku_size"]
    tier     = each.value["sku_tier"]
  }

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