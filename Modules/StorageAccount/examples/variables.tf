#################################
# 
# Variables for Storage Account
#
#################################

variable "resource_group_name" {
  type = string
}

variable "resource_groups" {
  type = map(object(
    {
      name     = string
      location = string
      tags     = map(string)
    }
  ))
  default = {}
}


variable "storage_accounts" {
  type = map(object(
    {
      access_tier               = string
      account_kind              = string
      account_replication_type  = string
      account_tier              = string
      allow_blob_public_access  = bool
      enable_https_traffic_only = bool
      is_hns_enabled            = bool
      large_file_share_enabled  = bool
      location                  = string
      min_tls_version           = string
      name                      = string
      tags                      = map(string)
    }
  ))
  default = {}
}

variable "blob_properties" {
  type = set(object(
    {
      container_delete_retention_policy = list(object(
        {
          days = number
        }
      ))
      cors_rule = list(object(
        {
          allowed_headers    = list(string)
          allowed_methods    = list(string)
          allowed_origins    = list(string)
          exposed_headers    = list(string)
          max_age_in_seconds = number
        }
      ))
      delete_retention_policy = list(object(
        {
          days = number
        }
      ))
    }
  ))
  default = []
}

variable "custom_domain" {
  type = set(object(
    {
      name          = string
      use_subdomain = bool
    }
  ))
  default = []
}

variable "identity" {
  type = set(object(
    {
      principal_id = string
      tenant_id    = string
      type         = string
    }
  ))
  default = []
}

variable "network_rules" {
  type = set(object(
    {
      bypass                     = set(string)
      default_action             = string
      ip_rules                   = set(string)
      virtual_network_subnet_ids = set(string)
    }
  ))
  default = []
}

variable "queue_properties" {
  type = set(object(
    {
      cors_rule = list(object(
        {
          allowed_headers    = list(string)
          allowed_methods    = list(string)
          allowed_origins    = list(string)
          exposed_headers    = list(string)
          max_age_in_seconds = number
        }
      ))
      hour_metrics = list(object(
        {
          enabled               = bool
          include_apis          = bool
          retention_policy_days = number
          version               = string
        }
      ))
      logging = list(object(
        {
          delete                = bool
          read                  = bool
          retention_policy_days = number
          version               = string
          write                 = bool
        }
      ))
      minute_metrics = list(object(
        {
          enabled               = bool
          include_apis          = bool
          retention_policy_days = number
          version               = string
        }
      ))
    }
  ))
  default = []
}
variable "static_website" {
  type = set(object(
    {
      error_404_document = string
      index_document     = string
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
