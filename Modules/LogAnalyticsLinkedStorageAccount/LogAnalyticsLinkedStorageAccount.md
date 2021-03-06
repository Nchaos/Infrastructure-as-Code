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
| [azurerm_log_analytics_linked_storage_account.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_linked_storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_convert_case"></a> [convert\_case](#input\_convert\_case) | Convert fields to lower case | `bool` | `true` | no |
| <a name="input_daily_quota_gb"></a> [daily\_quota\_gb](#input\_daily\_quota\_gb) | (Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. | `number` | `5` | no |
| <a name="input_data_source_type"></a> [data\_source\_type](#input\_data\_source\_type) | (Required) The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are customlogs, azurewatson, query, ingestion and alerts. Changing this forces a new Log Analytics Linked Storage Account to be created | `string` | `"customlogs"` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `namespace`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, which could be dev, val, prod, stg, uat, etc. | `string` | `""` | no |
| <a name="input_internet_ingestion_enabled"></a> [internet\_ingestion\_enabled](#input\_internet\_ingestion\_enabled) | (Optional) Should the Log Analytics Workflow support ingestion over the Public Internet? Defaults to true | `bool` | `true` | no |
| <a name="input_internet_query_enabled"></a> [internet\_query\_enabled](#input\_internet\_query\_enabled) | (Optional) Should the Log Analytics Workflow support querying over the Public Internet? Defaults to true | `bool` | `true` | no |
| <a name="input_law_name"></a> [law\_name](#input\_law\_name) | (Required) Specifies the name of the Container Registry. Changing this forces a new resource to be created | `string` | `""` | no |
| <a name="input_law_sku_name"></a> [law\_sku\_name](#input\_law\_sku\_name) | (Optional) Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new Sku as of 2018-04-03). Defaults to PerGB2018. | `string` | `"PerGB2018"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name | `string` | `""` | no |
| <a name="input_reservation_capcity_in_gb_per_day"></a> [reservation\_capcity\_in\_gb\_per\_day](#input\_reservation\_capcity\_in\_gb\_per\_day) | (Optional) The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000. | `number` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | (Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730 | `number` | `30` | no |
| <a name="input_storage_access_tier"></a> [storage\_access\_tier](#input\_storage\_access\_tier) | (Optional) Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot | `string` | `"Hot"` | no |
| <a name="input_storage_account_ids"></a> [storage\_account\_ids](#input\_storage\_account\_ids) | (Required) The storage account resource ids to be linked | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_storage_account_kind"></a> [storage\_account\_kind](#input\_storage\_account\_kind) | (Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2. | `string` | `"StorageV2"` | no |
| <a name="input_storage_account_network_rules_bypass"></a> [storage\_account\_network\_rules\_bypass](#input\_storage\_account\_network\_rules\_bypass) | (Optional) Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None | `list(string)` | <pre>[<br>  "Logging",<br>  "Metrics",<br>  "AzureServices"<br>]</pre> | no |
| <a name="input_storage_account_network_rules_default_action"></a> [storage\_account\_network\_rules\_default\_action](#input\_storage\_account\_network\_rules\_default\_action) | (Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow | `string` | `"Allow"` | no |
| <a name="input_storage_account_network_rules_ip_rules"></a> [storage\_account\_network\_rules\_ip\_rules](#input\_storage\_account\_network\_rules\_ip\_rules) | (Optional) List of public IP or IP ranges in CIDR Format. Only IPV4 addresses are allowed. Private IP address ranges (as defined in RFC 1918) are not allowed. | `list(string)` | `[]` | no |
| <a name="input_storage_account_network_rules_virtual_network_subnet_ids"></a> [storage\_account\_network\_rules\_virtual\_network\_subnet\_ids](#input\_storage\_account\_network\_rules\_virtual\_network\_subnet\_ids) | (Optional) A list of resource ids for subnets. | `list(string)` | `[]` | no |
| <a name="input_storage_account_replication_type"></a> [storage\_account\_replication\_type](#input\_storage\_account\_replication\_type) | (Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS | `string` | `"LRS"` | no |
| <a name="input_storage_account_tier"></a> [storage\_account\_tier](#input\_storage\_account\_tier) | (Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_storage_allow_blob_public_access"></a> [storage\_allow\_blob\_public\_access](#input\_storage\_allow\_blob\_public\_access) | Allow or disallow public access to all blobs or containers in the storage account. Defaults to false. | `bool` | `false` | no |
| <a name="input_storage_enable_https_traffic_only"></a> [storage\_enable\_https\_traffic\_only](#input\_storage\_enable\_https\_traffic\_only) | (Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true. | `bool` | `true` | no |
| <a name="input_storage_min_tls_version"></a> [storage\_min\_tls\_version](#input\_storage\_min\_tls\_version) | (Optional) The minimum supported TLS version for the storage account. Possible values are TLS1\_0, TLS1\_1, and TLS1\_2. Defaults to TLS1\_0 for new storage accounts | `string` | `"TLS1_0"` | no |
| <a name="input_storage_name"></a> [storage\_name](#input\_storage\_name) | (Required) Specifies the name of the storage account. The name must be between 3 and 24 characters. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | `string` | `"sa"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |
| <a name="input_workspace_resource_id"></a> [workspace\_resource\_id](#input\_workspace\_resource\_id) | (Required) The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
