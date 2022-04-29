module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "network_security_group" {
  source                  = "../"
  resource_group_name     = var.resource_group_name
  network_security_groups = var.network_security_groups
  depends_on              = [module.resource_group]
}