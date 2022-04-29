#################################
# 
# Outputs for Resource Group
#
#################################

output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_id" {
  value = module.resource_group.id
}

output "resource_group_location" {
  value = module.resource_group.location
}

#################################
# 
# Outputs for Storage Account
#
#################################

output "storage_account_name" {
  value = module.storage_account.name
}

output "storage_account_id" {
  value = module.storage_account.id
}

#################################
# 
# Outputs for Log Analytics Workspace
#
#################################

output "law_name" {
  value = module.log_analytics_workspace.name
}

output "law_id" {
  value = module.log_analytics_workspace.id
}

output "law_primary_shared_key" {
  value = module.log_analytics_workspace.primary_shared_key
}

output "law_secondary_shared_key" {
  value = module.log_analytics_workspace.secondary_shared_key
}

output "law_workspace_id" {
  value = module.log_analytics_workspace.workspace_id
}

#################################
# 
# Outputs for Log Analytics Linked Storage Account
#
#################################

output "log_analytics_linked_storage_account_id" {
  value = module.log_analytics_linked_storage_account.id
}
