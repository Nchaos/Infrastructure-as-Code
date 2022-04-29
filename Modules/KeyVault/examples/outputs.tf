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

