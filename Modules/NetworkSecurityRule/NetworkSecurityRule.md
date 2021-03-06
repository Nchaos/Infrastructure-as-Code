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
| [azurerm_network_security_rule.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_security_rules"></a> [network\_security\_rules](#input\_network\_security\_rules) | n/a | <pre>map(object({<br>    access                                     = string<br>    description                                = string<br>    destination_address_prefix                 = string<br>    destination_address_prefixes               = set(string)<br>    destination_application_security_group_ids = set(string)<br>    destination_port_range                     = string<br>    destination_port_ranges                    = set(string)<br>    direction                                  = string<br>    name                                       = string<br>    network_security_group_name                = string<br>    priority                                   = number<br>    protocol                                   = string<br>    source_address_prefix                      = string<br>    source_address_prefixes                    = set(string)<br>    source_application_security_group_ids      = set(string)<br>    source_port_range                          = string<br>    source_port_ranges                         = set(string)<br>  }))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | nested block: NestingSingle, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nsr_ids_map"></a> [nsr\_ids\_map](#output\_nsr\_ids\_map) | n/a |
