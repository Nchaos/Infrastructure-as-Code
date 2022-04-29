#################################
# 
# Variables for General Resources
#
#################################

variable "resource_group_name" {
  type    = string
  default = ""
}

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

#################################
# 
# Variables for Azure Container Registry
#
#################################

variable "admin_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "network_rule_set" {
  description = "(optional)"
  type = list(object(
    {
      default_action = string
      ip_rule = set(object(
        {
          action   = string
          ip_range = string
        }
      ))
      virtual_network = set(object(
        {
          action    = string
          subnet_id = string
        }
      ))
    }
  ))
  default = null
}

variable "public_network_access_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "quarantine_policy_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "retention_policy" {
  description = "(optional)"
  type = list(object(
    {
      days    = number
      enabled = bool
    }
  ))
  default = null
}

variable "container_sku" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "storage_account_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "trust_policy" {
  description = "(optional)"
  type = list(object(
    {
      enabled = bool
    }
  ))
  default = null
}

variable "georeplications" {
  type = list(object(
    {
      location = string
      zone_redundancy_enabled = bool
      tags = map(string)
    }
  ))
  description = "(optional)"
  default = null
}