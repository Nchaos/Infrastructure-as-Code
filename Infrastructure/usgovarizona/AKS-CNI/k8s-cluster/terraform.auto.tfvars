#################################
# 
# Variables for General Deployment
#
#################################

location    = "usgovarizona"
environment = "prod"
app_name    = "akscni"
tags = {
  Owner   = "Erik Ha"
  Contact = "ErikHa@Microsoft.com"
  Project = "Terraform Development"
  Alias2  = "no"
}

#################################
# 
# Variables for AKS Cluster
#
#################################

dns_prefix               = "aksdevusdc"
dnp_name                 = "akscniusdc"
kubernetes_version       = "1.21.1"
dnp_orchestrator_version = "1.21.1"
private_cluster_enabled  = true
private_dns_zone_id      = "System"
sku_tier                 = "Free"
dns_service_ip           = "10.0.16.4"
docker_bridge_cidr       = "172.17.0.1/16"
load_balancer_sku        = "Standard"
network_mode             = "transparent"
network_plugin           = "azure"
network_policy           = "azure"
outbound_type            = "loadBalancer"
service_cidr             = "10.0.16.0/24"