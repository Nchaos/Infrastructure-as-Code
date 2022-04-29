output "virtual_wans_ids_map" {
  value = { for k in azurerm_virtual_wan.this : k.name => k.id }
}