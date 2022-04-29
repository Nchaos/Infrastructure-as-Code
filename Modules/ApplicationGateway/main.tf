locals {
  backend_address_pool_name      = "${var.virtual_network_name}-beap"
  frontend_port_name             = "${var.virtual_network_name}-feport"
  frontend_ip_configuration_name = "${var.virtual_network_name}-feip"
  http_setting_name              = "${var.virtual_network_name}-be-htst"
  listener_name                  = "${var.virtual_network_name}-httplstn"
  request_routing_rule_name      = "${var.virtual_network_name}-rqrt"
  redirect_configuration_name    = "${var.virtual_network_name}-rdrcfg"
}

module "application_gateway_label" {
  source      = "../.global/Labels/"
  environment = var.environment
  project     = var.project
  name        = var.application_gateway_name
  tags        = var.tags
}

resource "azurerm_application_gateway" "example" {
  name                = module.application_gateway_label.id
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    name     = var.app_gw_sku
    tier     = var.app_gw_tier
    capacity = var.app_gw_capacity
  }

  gateway_ip_configuration {
    name      = "${module.application_gateway_label.id}-ip-conf"
    subnet_id = var.gateway_subnet_id
  }

  frontend_port {
    name = local.frontend_port_name
    port = var.frontend_port
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = var.public_ip_address_id
  }

  backend_address_pool {
    name = local.backend_address_pool_name
  }

  backend_http_settings {
    name                  = local.http_setting_name
    cookie_based_affinity = var.cookie_based_affinity
    path                  = var.backend_http_path
    port                  = var.backend_port
    protocol              = var.backend_protocol
    request_timeout       = var.backend_request_timeout
  }

  http_listener {
    name                           = local.listener_name
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = var.http_listener_protocol
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name
    rule_type                  = var.routing_rule_type
    http_listener_name         = local.listener_name
    backend_address_pool_name  = local.backend_address_pool_name
    backend_http_settings_name = local.http_setting_name
  }

  tags = module.application_gateway_label.tags
}
