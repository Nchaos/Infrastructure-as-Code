## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policy"></a> [access\_policy](#input\_access\_policy) | (optional) | <pre>list(object(<br>    {<br>      application_id          = string<br>      certificate_permissions = list(string)<br>      key_permissions         = list(string)<br>      object_id               = string<br>      secret_permissions      = list(string)<br>      storage_permissions     = list(string)<br>      tenant_id               = string<br>    }<br>  ))</pre> | `null` | no |
| <a name="input_contact"></a> [contact](#input\_contact) | n/a | <pre>set(object(<br>    {<br>      email = string<br>      name  = string<br>      phone = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_enable_rbac_authorization"></a> [enable\_rbac\_authorization](#input\_enable\_rbac\_authorization) | (optional) | `bool` | `null` | no |
| <a name="input_enabled_for_deployment"></a> [enabled\_for\_deployment](#input\_enabled\_for\_deployment) | (optional) | `bool` | `null` | no |
| <a name="input_enabled_for_disk_encryption"></a> [enabled\_for\_disk\_encryption](#input\_enabled\_for\_disk\_encryption) | (optional) | `bool` | `null` | no |
| <a name="input_enabled_for_template_deployment"></a> [enabled\_for\_template\_deployment](#input\_enabled\_for\_template\_deployment) | (optional) | `bool` | `null` | no |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | (required) | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (required) | `string` | n/a | yes |
| <a name="input_network_acls"></a> [network\_acls](#input\_network\_acls) | n/a | <pre>set(object(<br>    {<br>      bypass                     = string<br>      default_action             = string<br>      ip_rules                   = set(string)<br>      virtual_network_subnet_ids = set(string)<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_purge_protection_enabled"></a> [purge\_protection\_enabled](#input\_purge\_protection\_enabled) | (optional) | `bool` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (required) | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | (required) | `string` | n/a | yes |
| <a name="input_soft_delete_retention_days"></a> [soft\_delete\_retention\_days](#input\_soft\_delete\_retention\_days) | (optional) | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) | `map(string)` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault"></a> [key\_vault](#output\_key\_vault) | Key Vault details |
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | The Id of the Key Vault |
| <a name="output_key_vault_name"></a> [key\_vault\_name](#output\_key\_vault\_name) | The Name of the Key Vault |
| <a name="output_key_vault_uri"></a> [key\_vault\_uri](#output\_key\_vault\_uri) | The URI of the Key Vault, used for performing operations on keys and secrets |
| <a name="output_purge_protection"></a> [purge\_protection](#output\_purge\_protection) | Key Vault purge protection status |
