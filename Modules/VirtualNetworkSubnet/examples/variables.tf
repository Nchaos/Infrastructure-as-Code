variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
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

variable "virtual_networks" {
  type = map(object({
    address_space         = list(string)
    bgp_community         = string
    dns_servers           = list(string)
    location              = string
    name                  = string
    vm_protection_enabled = bool
    tags                  = map(string)
  }))
  default = {}
}

variable "ddos_protection_plan" {
  description = "nested block: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable = bool
      id     = string
  }))
  default = []
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
    name             = string
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