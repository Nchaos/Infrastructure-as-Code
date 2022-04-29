data azurerm_resource_group "this" {
  name = "rg-${var.environment}-${var.app_name}"
}

data "azurerm_subnet" "this" {
  name                 = "snet-aks-001"
  virtual_network_name = "vnet-${var.environment}-${var.app_name}"
  resource_group_name  = "rg-${var.environment}-${var.app_name}"
}

module "kubernetes_cluster" {
  source                   = "../../../../Modules/KubernetesCluster"
  app_name                 = var.app_name
  environment              = var.environment
  location                 = data.azurerm_resource_group.this.location
  resource_group_name      = data.azurerm_resource_group.this.name
  dnp_name                 = var.dnp_name
  dns_prefix               = var.dns_prefix
  dnp_orchestrator_version = var.dnp_orchestrator_version
  dnp_vnet_subnet_id       = data.azurerm_subnet.this.id
  kubernetes_version       = var.kubernetes_version
  private_cluster_enabled  = var.private_cluster_enabled
  private_dns_zone_id      = var.private_dns_zone_id
  sku_tier                 = var.sku_tier
  tags                     = var.tags
  dns_service_ip           = var.dns_service_ip
  docker_bridge_cidr       = var.docker_bridge_cidr
  load_balancer_sku        = var.load_balancer_sku
  network_mode             = var.network_mode
  network_plugin           = var.network_plugin
  network_policy           = var.network_policy
  outbound_type            = var.outbound_type
  service_cidr             = var.service_cidr
}
