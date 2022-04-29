#################################
# 
# Variables for Network Security Group (does not create rules)
#
#################################


variable "resource_group_name" {
  type = string
}

variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  default = {}
}

variable "network_security_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
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
  }))
  default = []
}