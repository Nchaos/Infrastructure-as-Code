variable "resource_group_name" {
  type = string
}

#################################
# 
# Variables for Resource Group
#
#################################

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

#################################
# 
# Variables for Azure Container Registry
#
#################################

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
