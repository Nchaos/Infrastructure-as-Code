#################################
# 
# Outputs for Network Security Rules
#
#################################

output "nsr_ids_map" {
  value = { for k in azurerm_network_security_rule.this : k.name => k.id }
}