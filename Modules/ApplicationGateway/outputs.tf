#################################
# 
# Outputs for Application Gateway
#
#################################

output "id" {
  value = azurerm_application_gateway.example.id
}

output "backend_address_pool" {
  value = azurerm_application_gateway.example.backend_address_pool
}

output "backend_http_settings" {
  value = azurerm_application_gateway.example.backend_http_settings
}

output "frontend_ip_configuration" {
  value = azurerm_application_gateway.example.frontend_ip_configuration
}

output "frontend_port" {
  value = azurerm_application_gateway.example.frontend_port
}

output "gateway_ip_configuration" {
  value = azurerm_application_gateway.example.gateway_ip_configuration
}

output "http_listener" {
  value = azurerm_application_gateway.example.http_listener
}
