#################################
# 
# Variables for Virtual Network Subnets
#
#################################

variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
    name             = string
  }))
  default = {}
}