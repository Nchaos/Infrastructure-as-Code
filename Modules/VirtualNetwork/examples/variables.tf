#################################
# 
# Variables for Naming
#
#################################

variable "location" {
  description = "(required)"
  type        = string
}

variable "environment" {
  description = "(required)"
  type        = string
}

variable "app_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

#################################
# 
# Variables for Virtual Network
#
#################################

variable "resource_group_name" {
  type    = string
  default = ""
}

variable "address_space" {
  description = "(required)"
  type        = list(string)
}

variable "bgp_community" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "dns_servers" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "subnet" {
  description = "(optional)"
  type = set(object(
    {
      address_prefix = string
      name           = string
      security_group = string
      id             = string
    }
  ))
  default = null
}

variable "ddos_protection_plan" {
  description = "nested block: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable = bool
      id     = string
    }
  ))
  default = []
}