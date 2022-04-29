variable "resource_group_name" {
  type = string
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