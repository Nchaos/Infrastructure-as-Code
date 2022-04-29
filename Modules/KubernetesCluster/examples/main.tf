

module "resource_group" {
  source      = "../../ResourceGroup"
  app_name    = var.app_name
  environment = var.environment
  location    = var.location
  tags        = var.tags
}

module "virtual_network" {
  source              = "../../VirtualNetwork"
  app_name            = var.app_name
  environment         = var.environment
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  address_space       = var.address_space
  tags                = var.tags
  subnet              = var.subnet
}

data "azurerm_subnet" "this" {
  name                 = "snet-cni"
  virtual_network_name = module.virtual_network.vnet_name
  resource_group_name  = module.resource_group.resource_group_name
  depends_on           = [module.virtual_network]
}

module "kubernetes_cluster" {
  source                   = "../"
  app_name                 = var.app_name
  environment              = var.environment
  location                 = module.resource_group.resource_group_location
  resource_group_name      = module.resource_group.resource_group_name
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
