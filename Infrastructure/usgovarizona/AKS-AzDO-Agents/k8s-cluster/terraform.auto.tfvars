#################################
# 
# Variables for General Deployment
#
#################################

location    = "usgovarizona"
environment = "prod"
app_name    = "azdoagents"
tags = {
  Owner   = "Erik Ha"
  Alias = "ErikHa@Microsoft.com"
  Project = "Terraform Development"
  Alias2  = "ErikHa@Microsoft.com"
}

#################################
# 
# Variables for AKS Cluster
#
#################################

dns_prefix               = "usdcaksazdoagents"
dnp_name                 = "systemdnp"
dnp_node_count            = 3
kubernetes_version       = "1.21.1"
dnp_orchestrator_version = "1.21.1"
private_cluster_enabled  = false
sku_tier                 = "Free"
load_balancer_sku        = "Standard"

#################################
# 
# Variables for AKS Cluster Node Pool
#
#################################

machine_type        = "Standard_D2_v2"
max_nodes           = null
min_nodes           = null
node_count          = 3
os_disk_size        = 128
enable_auto_scaling = false