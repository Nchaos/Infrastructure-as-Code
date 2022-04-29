
module "resource_group" {
  source          = "../../ResourceGroup"
  resource_groups = var.resource_groups
}

module "app_service_plan" {
  source              = "../"
  resource_group_name = var.resource_group_name
  app_service_plans   = var.app_service_plans
  depends_on          = [module.resource_group]
}
