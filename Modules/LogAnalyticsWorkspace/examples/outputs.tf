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
# Outputs for Log Analytics Workspace
#
#################################

output "law_id" {
  value = module.log_analytics_workspace.law_id
}

output "law_name" {
  value = module.log_analytics_workspace.law_name
}

output "law_workspace_id" {
  value = module.log_analytics_workspace.law_workspace_id
}

output "law_ids_map" {
  value = module.log_analytics_workspace.law_ids_map
}

output "law_primary_shared_keys_map" {
  value = module.log_analytics_workspace.law_primary_shared_keys_map
}

output "law_workspace_ids_map" {
  value = module.log_analytics_workspace.law_workspace_ids_map
}