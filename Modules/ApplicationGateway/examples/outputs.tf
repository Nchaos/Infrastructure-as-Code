#################################
# 
# Outputs for Resource Group
#
#################################

output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_id" {
  value = module.resource_group.id
}

output "resource_group_location" {
  value = module.resource_group.location
}

#################################
# 
# Outputs for Azure Virtual Network
#
#################################

output "virtual_network_name" {
  value = module.virtual_network.name
}

output "virtual_network_id" {
  value = module.virtual_network.id
}

output "virtual_network_location" {
  value = module.virtual_network.location
}

output "virtual_network_address_space" {
  value = module.virtual_network.address_space
}

output "virtual_network_guid" {
  value = module.virtual_network.guid
}

output "virtual_network_subnet" {
  value = module.virtual_network.subnet
}

#################################
# 
# Outputs for Azure Virtual Network Subnets
#
#################################

output "virtual_network_subnet_id" {
  value = module.virtual_network_subnet.id
}

output "virtual_network_subnet_name" {
  value = module.virtual_network_subnet.name
}

output "virtual_network_subnet_virtual_network_name" {
  value = module.virtual_network_subnet.virtual_network_name
}

output "virtual_network_subnet_address_prefixes" {
  value = module.virtual_network_subnet.address_prefixes
}

#################################
# 
# Outputs for Azure Public IP
#
#################################

output "public_ip_name" {
  value = module.public_ip.name
}

output "public_ip_id" {
  value = module.public_ip.id
}

output "public_ip_ip_address" {
  value = module.public_ip.ip_address
}

output "public_ip_fqdn" {
  value = module.public_ip.fqdn
}

#################################
# 
# Outputs for Application Gateway
#
#################################

output "application_gateway_id" {
  value = module.application_gateway.id
}

output "application_gateway_backend_address_pool" {
  value = module.application_gateway.backend_address_pool
}

output "application_gateway_backend_http_settings" {
  value = module.application_gateway.backend_http_settings
}

output "application_gateway_frontend_ip_configuration" {
  value = module.application_gateway.frontend_ip_configuration
}

output "application_gateway_frontend_port" {
  value = module.application_gateway.frontend_port
}

output "application_gateway_gateway_ip_configuration" {
  value = module.application_gateway.gateway_ip_configuration
}

output "application_gateway_http_listener" {
  value = module.application_gateway.http_listener
}
