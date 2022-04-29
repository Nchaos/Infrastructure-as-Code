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

variable "automation_accounts" {
  type = map(object(
    {
      location = string
      name     = string
      sku_name = string
      tags     = map(string)
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