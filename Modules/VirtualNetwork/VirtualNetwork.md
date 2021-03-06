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
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ddos_protection_plan"></a> [ddos\_protection\_plan](#input\_ddos\_protection\_plan) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      enable = bool<br>      id     = string<br>  }))</pre> | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | nested block: NestingSingle, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>  }))</pre> | `[]` | no |
| <a name="input_virtual_networks"></a> [virtual\_networks](#input\_virtual\_networks) | n/a | <pre>map(object({<br>    address_space         = list(string)<br>    bgp_community         = string<br>    dns_servers           = list(string)<br>    location              = string<br>    name                  = string<br>    vm_protection_enabled = bool<br>    tags                  = map(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vnet_address_spaces_map"></a> [vnet\_address\_spaces\_map](#output\_vnet\_address\_spaces\_map) | n/a |
| <a name="output_vnet_guids_map"></a> [vnet\_guids\_map](#output\_vnet\_guids\_map) | n/a |
| <a name="output_vnet_ids_map"></a> [vnet\_ids\_map](#output\_vnet\_ids\_map) | n/a |
