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
| [azurerm_virtual_wan.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_wan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_virtual_wans"></a> [virtual\_wans](#input\_virtual\_wans) | n/a | <pre>map(object(<br>    {<br>      # Specify whether branch to branch traffic is allowed.<br>      allow_branch_to_branch_traffic = bool<br>      # Specify whether VPN encryption is disabled<br>      disable_vpn_encryption = bool<br>      location               = string<br>      name                   = string<br>      # Specifies the Office365 local breakout category. Possible values include: Optimize, OptimizeAndAllow, All, None.<br>      office365_local_breakout_category = string<br>      # Specifies the Virtual WAN type. Possible Values include: Basic and Standard<br>      type = string<br>      tags = map(string)<br>    }<br>  ))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_wans_ids_map"></a> [virtual\_wans\_ids\_map](#output\_virtual\_wans\_ids\_map) | n/a |
