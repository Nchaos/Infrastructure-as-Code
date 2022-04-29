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
# Outputs for Azure Automation Account
#
#################################

output "azure_automation_account_ids_map" {
  value = module.automation_account.azure_automation_account_ids_map
}

