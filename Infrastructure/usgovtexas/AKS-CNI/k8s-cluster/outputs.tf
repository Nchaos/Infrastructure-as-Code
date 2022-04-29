#################################
# 
# Outputs for AKS Cluster
#
#################################

output "aks_resource_ids" {
  value = module.kubernetes_cluster.aks_resource_ids
}

output "aks_resource_ids_map" {
  value = module.kubernetes_cluster.aks_resource_ids_map
}

output "aks" {
  value = module.kubernetes_cluster.aks
}