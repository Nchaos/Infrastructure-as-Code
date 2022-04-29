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

variable "resource_group_name" {
  description = "(required)"
  type        = string
  default     = ""
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
      regional_endpoint_enabled = bool
      tags                      = map(string)
    }
  ))
  description = "(optional)"
  default     = []
}

#################################

# Variables for Key Vault
#
#################################

variable "access_policy" {
  description = "(optional)"
  type = list(object(
    {
      application_id          = string
      certificate_permissions = list(string)
      key_permissions         = list(string)
      object_id               = string
      secret_permissions      = list(string)
      storage_permissions     = list(string)
      tenant_id               = string
    }
  ))
  default = null
}

variable "enable_rbac_authorization" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enabled_for_deployment" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enabled_for_disk_encryption" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enabled_for_template_deployment" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "purge_protection_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "key_vault_sku" {
  description = "(required)"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "contact" {
  type = set(object(
    {
      email = string
      name  = string
      phone = string
    }
  ))
  default = []
}