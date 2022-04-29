#################################
# 
# Outputs for Resource Group
#
#################################

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "resource_group_location" {
  value = module.resource_group.resource_group_location
}
#################################
# 
# Outputs for Virtual Network
#
#################################

output "vnet_guid" {
  description = "returns a string"
  value       = module.virtual_network.vnet_guid
}

output "vnet_id" {
  description = "returns a string"
  value       = module.virtual_network.vnet_id
}
output "vnet_name" {
  value = module.virtual_network.vnet_name
}

output "subnet" {
  description = "returns a set of object"
  value       = module.virtual_network.subnet
}
