#################################
# 
# Outputs for Network Subnets
#
#################################

output "subnet_address_prefixes_map" {
  value = { for k in azurerm_subnet.this : k.name => k.address_prefixes }
}

output "subnet_ids_map" {
  value = { for k in azurerm_subnet.this : k.name => k.id }
}