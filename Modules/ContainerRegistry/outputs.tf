#################################
# 
# Outputs for Azure Container Registry
#
#################################

output "container_admin_password" {
  description = "returns a string"
  value       = azurerm_container_registry.this.admin_password
  sensitive   = true
}

output "container_admin_username" {
  description = "returns a string"
  value       = azurerm_container_registry.this.admin_username
}

output "container_registry_id" {
  description = "returns a string"
  value       = azurerm_container_registry.this.id
}

output "container_login_server" {
  description = "returns a string"
  value       = azurerm_container_registry.this.login_server
}

output "network_rule_set" {
  description = "returns a list of object"
  value       = azurerm_container_registry.this.network_rule_set
}

output "container_retention_policy" {
  description = "returns a list of object"
  value       = azurerm_container_registry.this.retention_policy
}

output "container_trust_policy" {
  description = "returns a list of object"
  value       = azurerm_container_registry.this.trust_policy
}