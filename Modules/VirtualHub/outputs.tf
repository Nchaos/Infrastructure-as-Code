output "virtual_hub_ids_map" {
  value = { for k in azurerm_virtual_hub.this : k.name => k.id }
}