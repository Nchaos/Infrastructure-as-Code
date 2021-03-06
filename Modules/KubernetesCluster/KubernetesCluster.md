## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addon_profile"></a> [addon\_profile](#input\_addon\_profile) | n/a | <pre>set(object(<br>    {<br>      aci_connector_linux = list(object(<br>        {<br>          enabled     = bool<br>          subnet_name = string<br>        }<br>      ))<br>      azure_policy = list(object(<br>        {<br>          enabled = bool<br>        }<br>      ))<br>      http_application_routing = list(object(<br>        {<br>          enabled                            = bool<br>          http_application_routing_zone_name = string<br>        }<br>      ))<br>      kube_dashboard = list(object(<br>        {<br>          enabled = bool<br>        }<br>      ))<br>      oms_agent = list(object(<br>        {<br>          enabled                    = bool<br>          log_analytics_workspace_id = string<br>          oms_agent_identity = list(object(<br>            {<br>              client_id                 = string<br>              object_id                 = string<br>              user_assigned_identity_id = string<br>            }<br>          ))<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_aks_clusters"></a> [aks\_clusters](#input\_aks\_clusters) | n/a | <pre>map(object({<br>    api_server_authorized_ip_ranges = set(string)<br>    automatic_channel_upgrade       = string<br>    disk_encryption_set_id          = string<br>    dns_prefix                      = string<br>    enable_pod_security_policy      = bool<br>    kubernetes_version              = string<br>    location                        = string<br>    name                            = string<br>    node_resource_group             = string<br>    private_cluster_enabled         = bool<br>    private_dns_zone_id             = string<br>    sku_tier                        = string<br>    tags                            = map(string)<br>  }))</pre> | `{}` | no |
| <a name="input_auto_scaler_profile"></a> [auto\_scaler\_profile](#input\_auto\_scaler\_profile) | n/a | <pre>set(object(<br>    {<br>      balance_similar_node_groups      = bool<br>      expander                         = string<br>      max_graceful_termination_sec     = string<br>      new_pod_scale_up_delay           = string<br>      scale_down_delay_after_add       = string<br>      scale_down_delay_after_delete    = string<br>      scale_down_delay_after_failure   = string<br>      scale_down_unneeded              = string<br>      scale_down_unready               = string<br>      scale_down_utilization_threshold = string<br>      scan_interval                    = string<br>      skip_nodes_with_local_storage    = bool<br>      skip_nodes_with_system_pods      = bool<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_default_node_pool"></a> [default\_node\_pool](#input\_default\_node\_pool) | n/a | <pre>set(object(<br>    {<br>      availability_zones           = list(string)<br>      enable_auto_scaling          = bool<br>      enable_host_encryption       = bool<br>      enable_node_public_ip        = bool<br>      max_count                    = number<br>      max_pods                     = number<br>      min_count                    = number<br>      name                         = string<br>      node_count                   = number<br>      node_labels                  = map(string)<br>      node_taints                  = list(string)<br>      only_critical_addons_enabled = bool<br>      orchestrator_version         = string<br>      os_disk_size_gb              = number<br>      os_disk_type                 = string<br>      proximity_placement_group_id = string<br>      tags                         = map(string)<br>      type                         = string<br>      upgrade_settings = list(object(<br>        {<br>          max_surge = string<br>        }<br>      ))<br>      vm_size        = string<br>      vnet_subnet_id = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_identity"></a> [identity](#input\_identity) | n/a | <pre>set(object(<br>    {<br>      principal_id              = string<br>      tenant_id                 = string<br>      type                      = string<br>      user_assigned_identity_id = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_linux_profile"></a> [linux\_profile](#input\_linux\_profile) | n/a | <pre>set(object(<br>    {<br>      admin_username = string<br>      ssh_key = list(object(<br>        {<br>          key_data = string<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_network_profile"></a> [network\_profile](#input\_network\_profile) | n/a | <pre>set(object(<br>    {<br>      dns_service_ip     = string<br>      docker_bridge_cidr = string<br>      load_balancer_profile = list(object(<br>        {<br>          effective_outbound_ips    = set(string)<br>          idle_timeout_in_minutes   = number<br>          managed_outbound_ip_count = number<br>          outbound_ip_address_ids   = set(string)<br>          outbound_ip_prefix_ids    = set(string)<br>          outbound_ports_allocated  = number<br>        }<br>      ))<br>      load_balancer_sku = string<br>      network_mode      = string<br>      network_plugin    = string<br>      network_policy    = string<br>      outbound_type     = string<br>      pod_cidr          = string<br>      service_cidr      = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_role_based_access_control"></a> [role\_based\_access\_control](#input\_role\_based\_access\_control) | n/a | <pre>set(object(<br>    {<br>      azure_active_directory = list(object(<br>        {<br>          admin_group_object_ids = set(string)<br>          client_app_id          = string<br>          managed                = bool<br>          server_app_id          = string<br>          server_app_secret      = string<br>          tenant_id              = string<br>        }<br>      ))<br>      enabled = bool<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_service_principal"></a> [service\_principal](#input\_service\_principal) | n/a | <pre>set(object(<br>    {<br>      client_id     = string<br>      client_secret = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_windows_profile"></a> [windows\_profile](#input\_windows\_profile) | n/a | <pre>set(object(<br>    {<br>      admin_password = string<br>      admin_username = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks"></a> [aks](#output\_aks) | n/a |
| <a name="output_aks_resource_ids"></a> [aks\_resource\_ids](#output\_aks\_resource\_ids) | List of Resource Id of AKS cluster's |
| <a name="output_aks_resource_ids_map"></a> [aks\_resource\_ids\_map](#output\_aks\_resource\_ids\_map) | Map of Resource Id of AKS cluster's |
