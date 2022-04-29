module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "storage_account" {
  source              = "../"
  resource_group_name = var.resource_group_name
  storage_accounts    = var.storage_accounts
  depends_on          = [module.resource_group]
}