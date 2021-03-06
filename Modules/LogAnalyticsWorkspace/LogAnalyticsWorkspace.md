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
| [azurerm_log_analytics_workspace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_analytics_workspaces"></a> [log\_analytics\_workspaces](#input\_log\_analytics\_workspaces) | n/a | <pre>map(object(<br>    {<br>      daily_quota_gb                    = number<br>      internet_ingestion_enabled        = bool<br>      internet_query_enabled            = bool<br>      location                          = string<br>      name                              = string<br>      reservation_capcity_in_gb_per_day = number<br>      retention_in_days                 = number<br>      sku                               = string<br>      tags                              = map(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | ################################  Variables for Log Analytics Workspace  ################################ | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_law_id"></a> [law\_id](#output\_law\_id) | n/a |
| <a name="output_law_ids_map"></a> [law\_ids\_map](#output\_law\_ids\_map) | n/a |
| <a name="output_law_name"></a> [law\_name](#output\_law\_name) | n/a |
| <a name="output_law_primary_shared_keys_map"></a> [law\_primary\_shared\_keys\_map](#output\_law\_primary\_shared\_keys\_map) | n/a |
| <a name="output_law_workspace_id"></a> [law\_workspace\_id](#output\_law\_workspace\_id) | n/a |
| <a name="output_law_workspace_ids_map"></a> [law\_workspace\_ids\_map](#output\_law\_workspace\_ids\_map) | n/a |
