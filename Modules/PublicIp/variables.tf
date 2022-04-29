#################################
# 
# Variables for Resource Group
#
#################################

variable "resource_group_name" {
  type = string
}

variable "public_ips" {
  type = map(object(
    {
      allocation_method = string
      name              = string
      location          = string
      sku               = string
      tags              = map(string)
      zones             = list(string)
    }
  ))
  default = {}
}
variable "timeouts" {
  description = "nested block: NestingSingle, min items: 0, max items: 0"
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

