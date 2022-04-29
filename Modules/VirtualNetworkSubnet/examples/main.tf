module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "virtual_network" {
  source               = "../../VirtualNetwork"
  resource_group_name  = var.resource_group_name
  virtual_networks     = var.virtual_networks
  ddos_protection_plan = var.ddos_protection_plan
  depends_on           = [module.resource_group]
}

module "virtual_network_subnets" {
  source               = "../"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnets              = var.subnets
  depends_on           = [module.virtual_network]
}