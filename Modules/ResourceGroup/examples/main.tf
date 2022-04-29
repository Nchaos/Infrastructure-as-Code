module "resource_group" {
  source      = "../"
  location    = var.location
  environment = var.environment
  app_name    = var.app_name
  tags        = var.tags
}
