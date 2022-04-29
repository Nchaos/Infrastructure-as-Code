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
# Outputs for AKS Cluster
#
#################################
output "aks_name" {
  value = module.kubernetes_cluster.aks_name
}

output "aks_location" {
  value = module.kubernetes_cluster.aks_location
}
output "aks_fqdn" {
  description = "returns a string"
  value       = module.kubernetes_cluster.aks_fqdn
}

output "aks_id" {
  description = "returns a string"
  value       = module.kubernetes_cluster.aks_id
}

output "kubernetes_version" {
  description = "returns a string"
  value       = module.kubernetes_cluster.kubernetes_version
}

output "aks_node_resource_group" {
  description = "returns a string"
  value       = module.kubernetes_cluster.aks_node_resource_group
}

output "aks_private_cluster_enabled" {
  description = "returns a bool"
  value       = module.kubernetes_cluster.aks_private_cluster_enabled
}

output "aks_private_dns_zone_id" {
  description = "returns a string"
  value       = module.kubernetes_cluster.aks_private_dns_zone_id
}

output "aks_private_fqdn" {
  description = "returns a string"
  value       = module.kubernetes_cluster.aks_private_fqdn
}
