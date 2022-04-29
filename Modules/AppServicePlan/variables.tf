variable "resource_group_name" {
  type = string
}

variable "app_service_plans" {
  type = map(object(
    {
      app_service_environment_id   = string
      is_xenon                     = bool
      kind                         = string
      location                     = string
      maximum_elastic_worker_count = number
      name                         = string
      per_site_scaling             = bool
      reserved                     = bool
      sku_capacity                 = number
      sku_size                     = string
      sku_tier                     = string
      tags                         = map(string)
    }
  ))
  default = {}
}

variable "timeouts" {
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}