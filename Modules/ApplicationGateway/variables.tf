variable "application_gateways" {
  type = map(object(
    {
      enable_http2       = bool
      firewall_policy_id = string
      location           = string
      name               = string
      agw_sku_capacity   = number
      agw_sku_name       = string
      agw_sku_tier       = string
      tags               = map(string)
      zones              = list(string)

      authentication_certificate = list(object({
        data = string
        id   = string
        name = string
      }))

      autoscale_configuration = list(object({
        max_capacity = number
        min_capacity = number
      }))

      backend_address_pool = list(object({
        fqdns        = list(string)
        id           = string
        ip_addresses = list(string)
        name         = string
      }))

      backend_http_settings = list(object({
        affinity_cookie_name = string
        authentication_certificate = list(object({
          id   = string
          name = string
        }))
        connection_draining = list(object({
          drain_timeout_sec = number
          enabled           = bool
        }))
        cookie_based_affinity               = string
        host_name                           = string
        id                                  = string
        name                                = string
        path                                = string
        pick_host_name_from_backend_address = bool
        port                                = number
        probe_id                            = string
        probe_name                          = string
        protocol                            = string
        request_timeout                     = number
        trusted_root_certificate_names      = list(string)
      }))

      custom_error_configuration = list(object({
        custom_error_page_url = string
        id                    = string
        status_code           = string
      }))

      frontend_ip_configuration = list(object({
        id                            = string
        name                          = string
        private_ip_address            = string
        private_ip_address_allocation = string
        public_ip_address_id          = string
        subnet_id                     = string
      }))

      frontend_port = list(object({
        id   = string
        name = string
        port = number
      }))

      gateway_ip_configuration = list(object({
        id        = string
        name      = string
        subnet_id = string
      }))

      http_listener = list(object({
        custom_error_configuration = list(object({
          custom_error_page_url = string
          id                    = string
          status_code           = string
        }))
        firewall_policy_id             = string
        frontend_ip_configuration_id   = string
        frontend_ip_configuration_name = string
        frontend_port_id               = string
        frontend_port_name             = string
        host_name                      = string
        host_names                     = set(string)
        id                             = string
        name                           = string
        protocol                       = string
        require_sni                    = bool
        ssl_certificate_id             = string
        ssl_certificate_name           = string
      }))

      identity = list(object({
        identity_ids = list(string)
        type         = string
      }))

      probe = list(object({
        host     = string
        id       = string
        interval = number
        match = list(object({
          body        = string
          status_code = list(string)
        }))
        minimum_servers                           = number
        name                                      = string
        path                                      = string
        pick_host_name_from_backend_http_settings = bool
        port                                      = number
        protocol                                  = string
        timeout                                   = number
        unhealthy_threshold                       = number
      }))

      redirect_configuration = list(object({
        id                   = string
        include_path         = bool
        include_query_string = bool
        name                 = string
        redirect_type        = string
        target_listener_id   = string
        target_listener_name = string
        target_url           = string
      }))

      request_routing_rule = list(object({
        backend_address_pool_id     = string
        backend_address_pool_name   = string
        backend_http_settings_id    = string
        backend_http_settings_name  = string
        http_listener_id            = string
        http_listener_name          = string
        id                          = string
        name                        = string
        redirect_configuration_id   = string
        redirect_configuration_name = string
        rewrite_rule_set_id         = string
        rewrite_rule_set_name       = string
        rule_type                   = string
        url_path_map_id             = string
        url_path_map_name           = string
      }))

      rewrite_rule_set = list(object({
        id   = string
        name = string
        rewrite_rule = list(object({
          condition = list(object({
            ignore_case = bool
            negate      = bool
            pattern     = string
            variable    = string
          }))
          name = string
          request_header_configuration = list(object({
            header_name  = string
            header_value = string
          }))
          rule_sequence = number
          url = list(object({
            path         = string
            query_string = string
            reroute      = bool
          }))
        }))
      }))

      ssl_certificate = list(object({
        data                = string
        id                  = string
        key_vault_secret_id = string
        name                = string
        password            = string
        public_cert_data    = string
      }))

      ssl_policy = list(object({
        cipher_suites        = list(string)
        disabled_protocols   = list(string)
        min_protocol_version = string
        policy_name          = string
        policy_type          = string
      }))

      trusted_root_certificate = list(object({
        data = string
        id   = string
        name = string
      }))

      url_path_map = list(object({
        default_backend_address_pool_id     = string
        default_backend_address_pool_name   = string
        default_backend_http_settings_id    = string
        default_backend_http_settings_name  = string
        default_redirect_configuration_id   = string
        default_redirect_configuration_name = string
        default_rewrite_rule_set_id         = string
        default_rewrite_rule_set_name       = string
        id                                  = string
        name                                = string
        path_rule = list(object({
          backend_address_pool_id     = string
          backend_address_pool_name   = string
          backend_http_settings_id    = string
          backend_http_settings_name  = string
          id                          = string
          name                        = string
          paths                       = list(string)
          redirect_configuration_id   = string
          redirect_configuration_name = string
          rewrite_rule_set_id         = string
          rewrite_rule_set_name       = string
        }))
      }))

      waf_configuration = list(object({
        disabled_rule_group = list(object({
          rule_group_name = string
          rules           = list(number)
        }))
        enabled = bool
        exclusion = list(object({
          match_variable          = string
          selector                = string
          selector_match_operator = string
        }))
        file_upload_limit_mb     = number
        firewall_mode            = string
        max_request_body_size_kb = number
        request_body_check       = bool
        rule_set_type            = string
        rule_set_version         = string
      }))
    }
  ))
  default = {}
}

variable "timeouts" {
  description = "nested block: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

