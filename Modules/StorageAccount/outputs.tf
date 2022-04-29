#################################
# 
# Outputs for Storage Account
#
#################################

output "sa_name" {
  value = [for k in azurerm_storage_account.this : k.name]
}

output "sa_ids" {
  value = [for k in azurerm_storage_account.this : k.id]

}
output "sa_ids_map" {
  value = { for k in azurerm_storage_account.this : k.name => k.id }
}

output "primary_location" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_location }
}

output "primary_blob_endpoint" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_blob_endpoint }
}

output "primary_blob_host" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_blob_host }
}

output "primary_queue_endpoint" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_queue_endpoint }
}

output "primary_queue_host" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_queue_host }
}

output "primary_table_endpoint" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_table_endpoint }
}

output "primary_table_host" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_table_host }
}

output "primary_file_endpoint" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_file_endpoint }
}

output "primary_file_host" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_file_host }
}

output "primary_dfs_endpoint" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_dfs_endpoint }
}

output "primary_dfs_host" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_dfs_host }
}

output "primary_web_endpoint" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_web_endpoint }
}

output "primary_web_host" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_web_host }
}

output "primary_access_key" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_access_key }
}

output "primary_connection_string" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_connection_string }
}

output "primary_blob_connection_string" {
  value = { for k in azurerm_storage_account.this : k.name => k.primary_blob_connection_string }
}
