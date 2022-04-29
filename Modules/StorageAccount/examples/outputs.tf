#################################
# 
# Outputs for Resource Group
#
#################################

output "resource_group_ids_map" {
  value = module.resource_group.resource_group_ids_map
}

output "resource_group_locations_map" {
  value = module.resource_group.resource_group_locations_map
}


#################################
# 
# Outputs for Storage Account
#
#################################
output "sa_name" {
  value = module.storage_account.sa_name
}

output "sa_ids" {
  value = module.storage_account.sa_ids
}
output "sa_ids_map" {
  value = module.storage_account.sa_ids_map
}

output "primary_location" {
  value = module.storage_account.primary_location
}

output "primary_blob_endpoint" {
  value = module.storage_account.primary_blob_endpoint
}

output "primary_blob_host" {
  value = module.storage_account.primary_blob_host
}

output "primary_queue_endpoint" {
  value = module.storage_account.primary_queue_endpoint
}

output "primary_queue_host" {
  value = module.storage_account.primary_queue_host
}

output "primary_table_endpoint" {
  value = module.storage_account.primary_table_endpoint
}

output "primary_table_host" {
  value = module.storage_account.primary_table_host
}

output "primary_file_endpoint" {
  value = module.storage_account.primary_file_endpoint
}

output "primary_file_host" {
  value = module.storage_account.primary_file_host
}

output "primary_dfs_endpoint" {
  value = module.storage_account.primary_dfs_endpoint
}

output "primary_dfs_host" {
  value = module.storage_account.primary_dfs_host
}

output "primary_web_endpoint" {
  value = module.storage_account.primary_web_endpoint
}

output "primary_web_host" {
  value = module.storage_account.primary_web_host
}

output "primary_access_key" {
  value = module.storage_account.primary_access_key
}

output "primary_connection_string" {
  value = module.storage_account.primary_connection_string
}

output "primary_blob_connection_string" {
  value = module.storage_account.primary_blob_connection_string
}
