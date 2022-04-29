module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "virtual_wan" {
  source              = "../"
  resource_group_name = var.resource_group_name
  virtual_wans        = var.virtual_wans
  depends_on          = [module.resource_group]
}
