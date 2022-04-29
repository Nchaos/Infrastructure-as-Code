#################################
# 
# Outputs for AKS Cluster
#
#################################

output "aks_name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "aks_location" {
  value = azurerm_kubernetes_cluster.this.location
}
output "aks_fqdn" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.fqdn
}

output "aks_id" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.id
}

output "kubernetes_version" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.kubernetes_version
}

output "aks_node_resource_group" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.node_resource_group
}

output "aks_private_cluster_enabled" {
  description = "returns a bool"
  value       = azurerm_kubernetes_cluster.this.private_cluster_enabled
}

output "aks_private_dns_zone_id" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.private_dns_zone_id
}

output "aks_private_fqdn" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.private_fqdn
}
