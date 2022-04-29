output "resource_group_ids_map" {
  value = module.resource_group.resource_group_ids_map
}

output "resource_group_locations_map" {
  value = module.resource_group.resource_group_locations_map
}

output "nsg_ids_map" {
  value = module.network_security_group.nsg_ids_map
}