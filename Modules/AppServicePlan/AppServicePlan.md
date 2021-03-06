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
| [azurerm_app_service_plan.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_plans"></a> [app\_service\_plans](#input\_app\_service\_plans) | n/a | <pre>map(object(<br>    {<br>      app_service_environment_id   = string<br>      is_xenon                     = bool<br>      kind                         = string<br>      location                     = string<br>      maximum_elastic_worker_count = number<br>      name                         = string<br>      per_site_scaling             = bool<br>      reserved                     = bool<br>      sku_capacity                 = number<br>      sku_size                     = string<br>      sku_tier                     = string<br>      tags                         = map(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | n/a | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      read   = string<br>      update = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_service_plan_ids_map"></a> [app\_service\_plan\_ids\_map](#output\_app\_service\_plan\_ids\_map) | n/a |
