resource "azurerm_kubernetes_cluster" "this" {
  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges
  # automatic channel upgrade not supported in gov cloud 10/19/2021
  #automatic_channel_upgrade       = var.automatic_channel_upgrade
  disk_encryption_set_id  = var.disk_encryption_set_id
  dns_prefix              = var.dns_prefix
  kubernetes_version      = var.kubernetes_version
  location                = var.location
  name                    = "aks-${var.environment}-${var.app_name}"
  private_cluster_enabled = var.private_cluster_enabled
  private_dns_zone_id     = var.private_dns_zone_id
  resource_group_name     = var.resource_group_name
  sku_tier                = var.sku_tier
  tags                    = var.tags

  addon_profile {
    aci_connector_linux {
      enabled = var.aci_connector_linux_enabled
    }

    azure_policy {
      enabled = var.azure_policy_enabled
    }

    http_application_routing {
      enabled = var.http_application_routing_enabled
    }

    kube_dashboard {
      enabled = var.kube_dashboard_enabled
    }

    oms_agent {
      enabled = var.oms_agent_enabled
    }
  }

  dynamic "auto_scaler_profile" {
    for_each = var.auto_scaler_profile
    content {
      balance_similar_node_groups      = auto_scaler_profile.value["balance_similar_node_groups"]
      max_graceful_termination_sec     = auto_scaler_profile.value["max_graceful_termination_sec"]
      new_pod_scale_up_delay           = auto_scaler_profile.value["new_pod_scale_up_delay"]
      scale_down_delay_after_add       = auto_scaler_profile.value["scale_down_delay_after_add"]
      scale_down_delay_after_delete    = auto_scaler_profile.value["scale_down_delay_after_delete"]
      scale_down_delay_after_failure   = auto_scaler_profile.value["scale_down_delay_after_failure"]
      scale_down_unneeded              = auto_scaler_profile.value["scale_down_unneeded"]
      scale_down_unready               = auto_scaler_profile.value["scale_down_unready"]
      scale_down_utilization_threshold = auto_scaler_profile.value["scale_down_utilization_threshold"]
      scan_interval                    = auto_scaler_profile.value["scan_interval"]
      skip_nodes_with_local_storage    = auto_scaler_profile.value["skip_nodes_with_local_storage"]
      skip_nodes_with_system_pods      = auto_scaler_profile.value["skip_nodes_with_system_pods"]
    }
  }

  default_node_pool {
    availability_zones     = var.dnp_availability_zones
    enable_auto_scaling    = var.dnp_enable_auto_scaling
    enable_host_encryption = var.dnp_enable_host_encryption
    max_count              = var.dnp_max_count
    max_pods               = var.dnp_max_pods
    min_count              = var.dnp_min_count
    name                   = var.dnp_name
    node_count             = var.dnp_node_count
    node_labels            = var.dnp_node_labels
    orchestrator_version   = var.dnp_orchestrator_version
    os_disk_size_gb        = var.dnp_os_disk_size_gb
    os_disk_type           = var.dnp_os_disk_type
    tags                   = var.tags
    type                   = var.dnp_type
    vm_size                = var.dnp_vm_size
    vnet_subnet_id         = var.dnp_vnet_subnet_id
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      type                      = identity.value["type"]
      user_assigned_identity_id = identity.value["user_assigned_identity_id"]
    }
  }

  network_profile {
    dns_service_ip     = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
    load_balancer_sku  = var.load_balancer_sku
    network_mode       = var.network_mode
    network_plugin     = var.network_plugin
    network_policy     = var.network_policy
    outbound_type      = var.outbound_type
    pod_cidr           = var.pod_cidr
    service_cidr       = var.service_cidr
  }


  # role_based_access_control {
  #   enabled = role_based_access_control.value["enabled"]

  #   azure_active_directory {
  #     admin_group_object_ids = azure_active_directory.value["admin_group_object_ids"]
  #     client_app_id          = azure_active_directory.value["client_app_id"]
  #     managed                = azure_active_directory.value["managed"]
  #     server_app_id          = azure_active_directory.value["server_app_id"]
  #     server_app_secret      = azure_active_directory.value["server_app_secret"]
  #     tenant_id              = azure_active_directory.value["tenant_id"]
  #   }
  # }
}
