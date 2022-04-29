module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "public_ip" {
  source              = "../"
  resource_group_name = var.resource_group_name
  public_ips          = var.public_ips
  depends_on          = [module.resource_group]
}