#################################
# 
# Outputs for Public IP
#
#################################

output "pip_ids_map" {
  value = { for k in azurerm_public_ip.this : k.name => k.id }
}

output "pip_ip_address_map" {
  value = { for k in azurerm_public_ip.this : k.name => k.ip_address }
}

output "pip_fqdns_map" {
  value = { for k in azurerm_public_ip.this : k.name => k.fqdn }
}

output "pip_skus_map" {
  value = { for k in azurerm_public_ip.this : k.name => k.sku }
}