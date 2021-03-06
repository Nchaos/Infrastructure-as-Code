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
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_blob_properties"></a> [blob\_properties](#input\_blob\_properties) | n/a | <pre>set(object(<br>    {<br>      container_delete_retention_policy = list(object(<br>        {<br>          days = number<br>        }<br>      ))<br>      cors_rule = list(object(<br>        {<br>          allowed_headers    = list(string)<br>          allowed_methods    = list(string)<br>          allowed_origins    = list(string)<br>          exposed_headers    = list(string)<br>          max_age_in_seconds = number<br>        }<br>      ))<br>      delete_retention_policy = list(object(<br>        {<br>          days = number<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_custom_domain"></a> [custom\_domain](#input\_custom\_domain) | n/a | <pre>set(object(<br>    {<br>      name          = string<br>      use_subdomain = bool<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_identity"></a> [identity](#input\_identity) | n/a | <pre>set(object(<br>    {<br>      principal_id = string<br>      tenant_id    = string<br>      type         = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_network_rules"></a> [network\_rules](#input\_network\_rules) | n/a | <pre>set(object(<br>    {<br>      bypass                     = set(string)<br>      default_action             = string<br>      ip_rules                   = set(string)<br>      virtual_network_subnet_ids = set(string)<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_queue_properties"></a> [queue\_properties](#input\_queue\_properties) | n/a | <pre>set(object(<br>    {<br>      cors_rule = list(object(<br>        {<br>          allowed_headers    = list(string)<br>          allowed_methods    = list(string)<br>          allowed_origins    = list(string)<br>          exposed_headers    = list(string)<br>          max_age_in_seconds = number<br>        }<br>      ))<br>      hour_metrics = list(object(<br>        {<br>          enabled               = bool<br>          include_apis          = bool<br>          retention_policy_days = number<br>          version               = string<br>        }<br>      ))<br>      logging = list(object(<br>        {<br>          delete                = bool<br>          read                  = bool<br>          retention_policy_days = number<br>          version               = string<br>          write                 = bool<br>        }<br>      ))<br>      minute_metrics = list(object(<br>        {<br>          enabled               = bool<br>          include_apis          = bool<br>          retention_policy_days = number<br>          version               = string<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_static_website"></a> [static\_website](#input\_static\_website) | n/a | <pre>set(object(<br>    {<br>      error_404_document = string<br>      index_document     = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_storage_accounts"></a> [storage\_accounts](#input\_storage\_accounts) | n/a | <pre>map(object(<br>    {<br>      access_tier               = string<br>      account_kind              = string<br>      account_replication_type  = string<br>      account_tier              = string<br>      allow_blob_public_access  = bool<br>      enable_https_traffic_only = bool<br>      is_hns_enabled            = bool<br>      large_file_share_enabled  = bool<br>      location                  = string<br>      min_tls_version           = string<br>      name                      = string<br>      tags                      = map(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | n/a |
| <a name="output_primary_blob_connection_string"></a> [primary\_blob\_connection\_string](#output\_primary\_blob\_connection\_string) | n/a |
| <a name="output_primary_blob_endpoint"></a> [primary\_blob\_endpoint](#output\_primary\_blob\_endpoint) | n/a |
| <a name="output_primary_blob_host"></a> [primary\_blob\_host](#output\_primary\_blob\_host) | n/a |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | n/a |
| <a name="output_primary_dfs_endpoint"></a> [primary\_dfs\_endpoint](#output\_primary\_dfs\_endpoint) | n/a |
| <a name="output_primary_dfs_host"></a> [primary\_dfs\_host](#output\_primary\_dfs\_host) | n/a |
| <a name="output_primary_file_endpoint"></a> [primary\_file\_endpoint](#output\_primary\_file\_endpoint) | n/a |
| <a name="output_primary_file_host"></a> [primary\_file\_host](#output\_primary\_file\_host) | n/a |
| <a name="output_primary_location"></a> [primary\_location](#output\_primary\_location) | n/a |
| <a name="output_primary_queue_endpoint"></a> [primary\_queue\_endpoint](#output\_primary\_queue\_endpoint) | n/a |
| <a name="output_primary_queue_host"></a> [primary\_queue\_host](#output\_primary\_queue\_host) | n/a |
| <a name="output_primary_table_endpoint"></a> [primary\_table\_endpoint](#output\_primary\_table\_endpoint) | n/a |
| <a name="output_primary_table_host"></a> [primary\_table\_host](#output\_primary\_table\_host) | n/a |
| <a name="output_primary_web_endpoint"></a> [primary\_web\_endpoint](#output\_primary\_web\_endpoint) | n/a |
| <a name="output_primary_web_host"></a> [primary\_web\_host](#output\_primary\_web\_host) | n/a |
| <a name="output_sa_ids"></a> [sa\_ids](#output\_sa\_ids) | n/a |
| <a name="output_sa_ids_map"></a> [sa\_ids\_map](#output\_sa\_ids\_map) | n/a |
| <a name="output_sa_name"></a> [sa\_name](#output\_sa\_name) | n/a |
