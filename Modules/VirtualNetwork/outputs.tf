#################################
# 
# Outputs for Virtual Network
#
#################################

output "vnet_guid" {
  description = "returns a string"
  value       = azurerm_virtual_network.this.guid
}

output "vnet_id" {
  description = "returns a string"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "subnet" {
  description = "returns a set of object"
  value       = azurerm_virtual_network.this.subnet
}

