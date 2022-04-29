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
# Outputs for Public IP
#
#################################

output "pip_ids_map" {
  value = module.public_ip.pip_ids_map
}

output "pip_ip_address_map" {
  value = module.public_ip.pip_ip_address_map
}

output "pip_fqdns_map" {
  value = module.public_ip.pip_fqdns_map
}

output "pip_skus_map" {
  value = module.public_ip.pip_skus_map
}
