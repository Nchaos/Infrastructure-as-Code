#################################
# 
# Variables for General Deployment
#
#################################

resource_group_name = "rg-aks-azdo-usdc-sharedprod"


aks_clusters = {
  aks_cluster_1 = {
    api_server_authorized_ip_ranges = null
    automatic_channel_upgrade       = null
    disk_encryption_set_id          = null
    dns_prefix                      = "aks-usdc-sharedprod"
    enable_pod_security_policy      = false
    kubernetes_version              = "1.19.11"
    location                        = "usgovarizona"
    name                            = "aks-usdc-sharedprod"
    node_resource_group             = null
    private_cluster_enabled         = false
    private_dns_zone_id             = null
    sku_tier                        = "Free"
    tags = {
      Owner   = "Erik Ha"
      Contact = "ErikHa@Microsoft.com"
      Project = "Infra-as-Code"
      Alias2  = "no"
    }
  }
}

addon_profile = [{
  aci_connector_linux = [{
    enabled     = false
    subnet_name = null
  }]
  azure_policy = [{
    enabled = false
  }]
  http_application_routing = [{
    enabled                            = false
    http_application_routing_zone_name = null
  }]
  kube_dashboard = [{
    enabled = false
  }]
  oms_agent = [{
    enabled                    = false
    log_analytics_workspace_id = null
    oms_agent_identity = [{
      client_id                 = null
      object_id                 = null
      user_assigned_identity_id = null
    }]
  }]
}]

auto_scaler_profile = []

default_node_pool = [{
  availability_zones           = []
  enable_auto_scaling          = false
  enable_host_encryption       = false
  enable_node_public_ip        = false
  max_count                    = null
  max_pods                     = null
  min_count                    = null
  name                         = "dnpaksazdo"
  node_count                   = 3
  node_labels                  = {}
  node_taints                  = []
  only_critical_addons_enabled = null
  orchestrator_version         = "1.19.11"
  os_disk_size_gb              = null
  os_disk_type                 = null
  proximity_placement_group_id = null
  tags                         = {}
  type                         = null
  upgrade_settings = [{
    max_surge = "50"
  }]
  vm_size        = "Standard_DS2_v2"
  vnet_subnet_id = null
}]

identity = [{
  principal_id              = null
  tenant_id                 = null
  type                      = "SystemAssigned"
  user_assigned_identity_id = null
}]

linux_profile = []

network_profile = []

role_based_access_control = []

service_principal = []

windows_profile = []
