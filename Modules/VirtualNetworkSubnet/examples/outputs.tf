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
# Outputs for Virtual Network
#
#################################

output "vnet_guids_map" {
  value = module.virtual_network.vnet_guids_map
}

output "vnet_ids_map" {
  value = module.virtual_network.vnet_ids_map
}

output "vnet_address_spaces_map" {
  value = module.virtual_network.vnet_address_spaces_map
}
#################################
# 
# Outputs for Virtual Network Subnets
#
#################################

output "subnet_address_prefixes_map" {
  value = module.virtual_network_subnets.subnet_address_prefixes_map
}

output "subnet_ids_map" {
  value = module.virtual_network_subnets.subnet_ids_map
}
