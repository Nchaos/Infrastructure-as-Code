variable "resource_group_name" {
  type = string
}
variable "aks_clusters" {
  type = map(object({
    api_server_authorized_ip_ranges = set(string)
    automatic_channel_upgrade       = string
    disk_encryption_set_id          = string
    dns_prefix                      = string
    enable_pod_security_policy      = bool
    kubernetes_version              = string
    location                        = string
    name                            = string
    node_resource_group             = string
    private_cluster_enabled         = bool
    private_dns_zone_id             = string
    sku_tier                        = string
    tags                            = map(string)
  }))
  default = {}
}

variable "addon_profile" {
  type = set(object(
    {
      aci_connector_linux = list(object(
        {
          enabled     = bool
          subnet_name = string
        }
      ))
      azure_policy = list(object(
        {
          enabled = bool
        }
      ))
      http_application_routing = list(object(
        {
          enabled                            = bool
          http_application_routing_zone_name = string
        }
      ))
      kube_dashboard = list(object(
        {
          enabled = bool
        }
      ))
      oms_agent = list(object(
        {
          enabled                    = bool
          log_analytics_workspace_id = string
          oms_agent_identity = list(object(
            {
              client_id                 = string
              object_id                 = string
              user_assigned_identity_id = string
            }
          ))
        }
      ))
    }
  ))
  default = []
}

variable "auto_scaler_profile" {
  type = set(object(
    {
      balance_similar_node_groups      = bool
      expander                         = string
      max_graceful_termination_sec     = string
      new_pod_scale_up_delay           = string
      scale_down_delay_after_add       = string
      scale_down_delay_after_delete    = string
      scale_down_delay_after_failure   = string
      scale_down_unneeded              = string
      scale_down_unready               = string
      scale_down_utilization_threshold = string
      scan_interval                    = string
      skip_nodes_with_local_storage    = bool
      skip_nodes_with_system_pods      = bool
    }
  ))
  default = []
}

variable "default_node_pool" {
  type = set(object(
    {
      availability_zones           = list(string)
      enable_auto_scaling          = bool
      enable_host_encryption       = bool
      enable_node_public_ip        = bool
      max_count                    = number
      max_pods                     = number
      min_count                    = number
      name                         = string
      node_count                   = number
      node_labels                  = map(string)
      node_taints                  = list(string)
      only_critical_addons_enabled = bool
      orchestrator_version         = string
      os_disk_size_gb              = number
      os_disk_type                 = string
      proximity_placement_group_id = string
      tags                         = map(string)
      type                         = string
      upgrade_settings = list(object(
        {
          max_surge = string
        }
      ))
      vm_size        = string
      vnet_subnet_id = string
    }
  ))
}

variable "identity" {
  type = set(object(
    {
      principal_id              = string
      tenant_id                 = string
      type                      = string
      user_assigned_identity_id = string
    }
  ))
  default = []
}

variable "linux_profile" {
  type = set(object(
    {
      admin_username = string
      ssh_key = list(object(
        {
          key_data = string
        }
      ))
    }
  ))
  default = []
}

variable "network_profile" {
  type = set(object(
    {
      dns_service_ip     = string
      docker_bridge_cidr = string
      load_balancer_profile = list(object(
        {
          effective_outbound_ips    = set(string)
          idle_timeout_in_minutes   = number
          managed_outbound_ip_count = number
          outbound_ip_address_ids   = set(string)
          outbound_ip_prefix_ids    = set(string)
          outbound_ports_allocated  = number
        }
      ))
      load_balancer_sku = string
      network_mode      = string
      network_plugin    = string
      network_policy    = string
      outbound_type     = string
      pod_cidr          = string
      service_cidr      = string
    }
  ))
  default = []
}

variable "role_based_access_control" {
  type = set(object(
    {
      azure_active_directory = list(object(
        {
          admin_group_object_ids = set(string)
          client_app_id          = string
          managed                = bool
          server_app_id          = string
          server_app_secret      = string
          tenant_id              = string
        }
      ))
      enabled = bool
    }
  ))
  default = []
}

variable "service_principal" {
  type = set(object(
    {
      client_id     = string
      client_secret = string
    }
  ))
  default = []
}

variable "timeouts" {
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

variable "windows_profile" {
  type = set(object(
    {
      admin_password = string
      admin_username = string
    }
  ))
  default = []
}