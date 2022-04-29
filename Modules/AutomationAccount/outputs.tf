output "azure_automation_account_ids_map" {
  value = { for k in azurerm_automation_account.this : k.name => k.id }
}


