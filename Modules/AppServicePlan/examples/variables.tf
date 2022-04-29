variable "resource_group_name" {
  type = string
}

variable "resource_groups" {
  description = "nested block: NestingSingle, min items: 0, max items: 0"
  type = map(object(
    {
      name     = string
      location = string
      tags     = map(string)
    }
  ))
  default = {}
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