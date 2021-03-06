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
| [azurerm_container_registry.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registries"></a> [container\_registries](#input\_container\_registries) | n/a | <pre>map(object(<br>    {<br>      admin_enabled                 = bool<br>      location                      = string<br>      name                          = string<br>      public_network_access_enabled = bool<br>      quarantine_policy_enabled     = bool<br>      sku                           = string<br>      storage_account_id            = string<br>      tags                          = map(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_network_rule_set"></a> [network\_rule\_set](#input\_network\_rule\_set) | n/a | <pre>list(object(<br>    {<br>      default_action = string<br>      ip_rule = set(object(<br>        {<br>          action   = string<br>          ip_range = string<br>        }<br>      ))<br>      virtual_network = set(object(<br>        {<br>          action    = string<br>          subnet_id = string<br>        }<br>      ))<br>    }<br>  ))</pre> | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_retention_policy"></a> [retention\_policy](#input\_retention\_policy) | n/a | <pre>list(object(<br>    {<br>      days    = number<br>      enabled = bool<br>    }<br>  ))</pre> | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_trust_policy"></a> [trust\_policy](#input\_trust\_policy) | n/a | <pre>list(object(<br>    {<br>      enabled = bool<br>    }<br>  ))</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_registry_ids_map"></a> [container\_registry\_ids\_map](#output\_container\_registry\_ids\_map) | n/a |
