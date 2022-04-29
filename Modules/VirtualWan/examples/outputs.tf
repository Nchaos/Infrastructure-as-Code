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
# Outputs for Virtual WAN
#
#################################

output "virtual_wans_ids_map" {
  value = module.virtual_wan.virtual_wans_ids_map
}

