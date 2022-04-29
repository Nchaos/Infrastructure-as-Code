module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "virtual_wan" {
  source              = "../../VirtualWan"
  resource_group_name = var.resource_group_name
  virtual_wans        = var.virtual_wans
  depends_on          = [module.resource_group]
}

module "virtual_hub" {
  source              = "../"
  resource_group_name = var.resource_group_name
  virtual_hubs        = var.virtual_hubs
  virtual_wan_id      = lookup(module.virtual_wan.virtual_wans_ids_map, "vwan-vhub-val-tf", null)
}