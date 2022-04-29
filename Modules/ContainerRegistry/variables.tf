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

variable "resource_group_name" {
  description = "(required)"
  type        = string
  default     = ""
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
      location                  = string
      zone_redundancy_enabled   = bool
      tags                      = map(string)
      regional_endpoint_enabled = bool
    }
  ))
  description = "(optional)"
  default     = []
}
