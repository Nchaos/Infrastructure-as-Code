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

variable "resource_group_name" {
  description = "(required)"
  type        = string
  default     = ""
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

variable "network_acls" {
  type = set(object(
    {
      bypass                     = string
      default_action             = string
      ip_rules                   = set(string)
      virtual_network_subnet_ids = set(string)
    }
  ))
  default = []
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