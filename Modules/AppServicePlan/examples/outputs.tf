#################################
# 
# Outputs for Resource Group
#
#################################

output "resource_group_ids_map" {
  value = module.resource_group.resource_group_ids_map
}

output "resource_group_locations_map" {
  value = module.resource_group.resource_group_locations_map
}

#################################
# 
# Outputs for Azure App Service Plan
#
#################################

output "app_service_plan_ids_map" {
  value = module.app_service_plan.app_service_plan_ids_map
}

