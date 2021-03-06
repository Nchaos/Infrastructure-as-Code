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
| [azurerm_public_ip.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_public_ips"></a> [public\_ips](#input\_public\_ips) | n/a | <pre>map(object(<br>    {<br>      allocation_method = string<br>      name              = string<br>      location          = string<br>      sku               = string<br>      tags              = map(string)<br>      zones             = list(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | nested block: NestingSingle, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pip_fqdns_map"></a> [pip\_fqdns\_map](#output\_pip\_fqdns\_map) | n/a |
| <a name="output_pip_ids_map"></a> [pip\_ids\_map](#output\_pip\_ids\_map) | n/a |
| <a name="output_pip_ip_address_map"></a> [pip\_ip\_address\_map](#output\_pip\_ip\_address\_map) | n/a |
| <a name="output_pip_skus_map"></a> [pip\_skus\_map](#output\_pip\_skus\_map) | n/a |
