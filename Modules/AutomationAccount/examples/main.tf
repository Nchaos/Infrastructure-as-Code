
module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "automation_account" {
  source              = "../"
  resource_group_name = var.resource_group_name
  automation_accounts = var.automation_accounts
  depends_on          = [module.resource_group]
}
