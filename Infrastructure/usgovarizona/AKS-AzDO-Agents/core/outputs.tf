#################################
# 
# Outputs for Resource Group
#
#################################

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "resource_group_location" {
  value = module.resource_group.resource_group_location
}

#################################
# 
# Outputs for Azure Key Vault
#
#################################

output "key_vault_id" {
  value = module.key_vault.key_vault_id
}

output "key_vault_name" {
  value = module.key_vault.key_vault_name
}

output "key_vault_uri" {
  value = module.key_vault.key_vault_uri
}

output "key_vault" {
  value = module.key_vault.key_vault
}

output "purge_protection" {
  value = module.key_vault.purge_protection
}

#################################
# 
# Outputs for Azure Container Registry
#
#################################

output "container_admin_password" {
  description = "returns a string"
  value       = module.container_registry.container_admin_password
  sensitive   = true
}

output "container_admin_username" {
  description = "returns a string"
  value       = module.container_registry.container_admin_username
}

output "container_registry_id" {
  description = "returns a string"
  value       = module.container_registry.container_registry_id
}

output "container_login_server" {
  description = "returns a string"
  value       = module.container_registry.container_login_server
}

output "network_rule_set" {
  description = "returns a list of object"
  value       = module.container_registry.network_rule_set
}

output "container_retention_policy" {
  description = "returns a list of object"
  value       = module.container_registry.container_retention_policy
}

output "container_trust_policy" {
  description = "returns a list of object"
  value       = module.container_registry.container_trust_policy
}