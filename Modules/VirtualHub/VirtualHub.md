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
| [azurerm_virtual_hub.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_route"></a> [route](#input\_route) | n/a | <pre>set(object(<br>    {<br>      address_prefixes    = list(string)<br>      next_hop_ip_address = string<br>  }))</pre> | `[]` | no |
| <a name="input_virtual_hubs"></a> [virtual\_hubs](#input\_virtual\_hubs) | n/a | <pre>map(object(<br>    {<br>      # The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. The address prefix subnet cannot be smaller than a /24. Azure recommends using a /23.<br>      address_prefix = string<br>      location       = string<br>      name           = string<br>      # The sku of the Virtual Hub. Possible values are Basic and Standard. Changing this forces a new resource to be created.<br>      sku  = string<br>      tags = map(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_virtual_wan_id"></a> [virtual\_wan\_id](#input\_virtual\_wan\_id) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_hub_ids_map"></a> [virtual\_hub\_ids\_map](#output\_virtual\_hub\_ids\_map) | n/a |
