#################################
# 
# Variables for Log Analytics Workspace
#
#################################
variable "resource_group_name" {
  type = string
}

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

variable "log_analytics_workspaces" {
  type = map(object(
    {
      daily_quota_gb                    = number
      internet_ingestion_enabled        = bool
      internet_query_enabled            = bool
      location                          = string
      name                              = string
      reservation_capcity_in_gb_per_day = number
      retention_in_days                 = number
      sku                               = string
      tags                              = map(string)
    }
  ))
  default = {}
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