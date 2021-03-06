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
| [azurerm_automation_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automation_accounts"></a> [automation\_accounts](#input\_automation\_accounts) | n/a | <pre>map(object(<br>    {<br>      location = string<br>      name     = string<br>      sku_name = string<br>      tags     = map(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_automation_account_ids_map"></a> [azure\_automation\_account\_ids\_map](#output\_azure\_automation\_account\_ids\_map) | n/a |
