data "terraform_remote_state" "core" {
  backend = "azurerm"

  config = {
    storage_account_name = "sausgovazusdciacstf"
    container_name       = "usgovaz-terraform-state"
    key                  = "usgovarizona-AKS-AzDO-Agents-core.tfstate"
    access_key           = "__storageKey__"
    environment          = "usgovernment"
  }
}

module "kubernetes_cluster" {
  source                   = "../../../../Modules/KubernetesCluster"
  app_name                 = var.app_name
  environment              = var.environment
  location                 = data.terraform_remote_state.core.outputs.resource_group_location
  resource_group_name      = data.terraform_remote_state.core.outputs.resource_group_name
  dnp_min_count            = var.dnp_min_count
  dnp_name                 = var.dnp_name
  dns_prefix               = var.dns_prefix
  dnp_orchestrator_version = var.dnp_orchestrator_version
  kubernetes_version       = var.kubernetes_version
  private_cluster_enabled  = var.private_cluster_enabled
  private_dns_zone_id      = var.private_dns_zone_id
  sku_tier                 = var.sku_tier
  dns_service_ip           = var.dns_service_ip
  docker_bridge_cidr       = var.docker_bridge_cidr
  load_balancer_sku        = var.load_balancer_sku
  network_mode             = var.network_mode
  network_plugin           = var.network_plugin
  network_policy           = var.network_policy
  outbound_type            = var.outbound_type
  service_cidr             = var.service_cidr
  tags                     = var.tags
}

module "kubernetes_cluster_static_node_pool" {
  source              = "../../../../Modules/KubernetesClusterNodePool"
  app_name            = var.app_name
  aks_cluster_id      = module.kubernetes_cluster.aks_id
  enable_auto_scaling = var.enable_auto_scaling
  machine_type        = var.machine_type
  max_nodes           = var.max_nodes
  min_nodes           = var.min_nodes
  node_count          = var.node_count
  os_disk_size        = var.os_disk_size
}