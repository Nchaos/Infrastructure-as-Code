#################################
# 
# Outputs for Azure App Service Plan
#
#################################

output "app_service_plan_ids_map" {
  value = { for k in azurerm_app_service_plan.this : k.name => k.id }
}