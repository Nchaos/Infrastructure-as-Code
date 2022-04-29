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

#################################
# 
# Outputs for Azure Container Registry
#
#################################

output "container_admin_password" {
  description = "returns a string"
  value       = module.container_registry.container_admin_password
  sensitive = true
}

output "container_admin_username" {
  description = "returns a string"
  value       = module.container_registry.container_admin_username
}

output "container_registry_id" {
  description = "returns a string"
  value       = module.container_registry.container_registry_id
}

output "container_login_server" {
  description = "returns a string"
  value       = module.container_registry.container_login_server
}

output "network_rule_set" {
  description = "returns a list of object"
  value       = module.container_registry.network_rule_set
}

output "container_retention_policy" {
  description = "returns a list of object"
  value       = module.container_registry.container_retention_policy
}

output "container_trust_policy" {
  description = "returns a list of object"
  value       = module.container_registry.container_trust_policy
}