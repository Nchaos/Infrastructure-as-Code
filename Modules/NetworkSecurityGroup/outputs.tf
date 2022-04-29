#################################
# 
# Outputs for Network Security Group
#
#################################

output "nsg_ids_map" {
  value       = { for k in azurerm_network_security_group.this : k.name => k.id }
  description = "The ID of the resource group"
}