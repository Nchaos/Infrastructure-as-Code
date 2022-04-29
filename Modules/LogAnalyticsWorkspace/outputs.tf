#################################
# 
# Outputs for Log Analytics Workspace
#
#################################

output "law_id" {
  value = [for k in azurerm_log_analytics_workspace.this : k.id]
}

output "law_name" {
  value = [for k in azurerm_log_analytics_workspace.this : k.name]
}

output "law_workspace_id" {
  value = [for k in azurerm_log_analytics_workspace.this : k.workspace_id]
}

output "law_ids_map" {
  value = { for k in azurerm_log_analytics_workspace.this : k.name => k.id }
}

output "law_primary_shared_keys_map" {
  value = { for k in azurerm_log_analytics_workspace.this : k.name => k.primary_shared_key }
}

output "law_workspace_ids_map" {
  value = { for k in azurerm_log_analytics_workspace.this : k.name => k.workspace_id }
}