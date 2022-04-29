module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}
module "log_analytics_workspace" {
  source                   = "../"
  resource_group_name      = var.resource_group_name
  log_analytics_workspaces = var.log_analytics_workspaces
  depends_on               = [module.resource_group]
}
