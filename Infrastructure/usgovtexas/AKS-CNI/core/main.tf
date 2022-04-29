module "resource_group" {
  source          = "../../../Modules/ResourceGroup"
  resource_groups = var.resource_groups
}

module "virtual_network" {
  source               = "../../../Modules/VirtualNetwork"
  resource_group_name  = var.resource_group_name
  virtual_networks     = var.virtual_networks
  ddos_protection_plan = var.ddos_protection_plan
  depends_on           = [module.resource_group]
}
