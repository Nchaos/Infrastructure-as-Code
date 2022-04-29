#################################
# 
# Variables for labels
#
#################################

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, which could be dev, val, prod, stg, uat, etc."
}

variable "project" {
  type        = string
  default     = ""
  description = "Project name"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "convert_case" {
  type        = bool
  default     = true
  description = "Convert fields to lower case"
}

#################################
# 
# Variables for resource creation
#
#################################

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
}

variable "law_name" {
  type        = string
  default     = ""
  description = "(Required) Specifies the name of the Container Registry. Changing this forces a new resource to be created"
}

variable "location" {
  type    = string
  default = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

#################################
# 
# Variables for Azure Storage Account
#
#################################

variable "storage_name" {
  type        = string
  default     = "sa"
  description = "(Required) Specifies the name of the storage account. The name must be between 3 and 24 characters. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "storage_access_tier" {
  type        = string
  default     = "Hot"
  description = "(Optional) Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot"
}

variable "storage_account_kind" {
  type        = string
  default     = "StorageV2"
  description = "(Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2."
}

variable "storage_account_replication_type" {
  type        = string
  default     = "LRS"
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
}

variable "storage_account_tier" {
  type        = string
  default     = "Standard"
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
}

variable "storage_allow_blob_public_access" {
  type        = bool
  default     = false
  description = "Allow or disallow public access to all blobs or containers in the storage account. Defaults to false."
}

variable "storage_enable_https_traffic_only" {
  type        = bool
  default     = true
  description = "(Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true."
}

variable "storage_min_tls_version" {
  type        = string
  default     = "TLS1_0"
  description = "(Optional) The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_0 for new storage accounts"
}

variable "storage_account_network_rules_default_action" {
  type        = string
  default     = "Allow"
  description = "(Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow"
}

variable "storage_account_network_rules_bypass" {
  type        = list(string)
  default     = ["Logging", "Metrics", "AzureServices"]
  description = "(Optional) Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None"
}

variable "storage_account_network_rules_ip_rules" {
  type        = list(string)
  default     = []
  description = "(Optional) List of public IP or IP ranges in CIDR Format. Only IPV4 addresses are allowed. Private IP address ranges (as defined in RFC 1918) are not allowed."
}

variable "storage_account_network_rules_virtual_network_subnet_ids" {
  type        = list(string)
  default     = []
  description = "(Optional) A list of resource ids for subnets."
}

#################################
# 
# Variables for Log Analytics Workspace
#
#################################

variable "law_sku_name" {
  type        = string
  default     = "PerGB2018"
  description = "(Optional) Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new Sku as of 2018-04-03). Defaults to PerGB2018."
  # NOTE : The Free SKU has a default daily_quota_gb value of 0.5 (GB).
}

variable "retention_in_days" {
  type        = number
  default     = 30
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730"
}

variable "daily_quota_gb" {
  type        = number
  default     = 5
  description = "(Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted."
  #  NOTE: When sku is set to Free this field can be set to a maximum of 0.5 (GB), and has a default value of 0.5
}

variable "internet_ingestion_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Should the Log Analytics Workflow support ingestion over the Public Internet? Defaults to true"
}

variable "internet_query_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Should the Log Analytics Workflow support querying over the Public Internet? Defaults to true"
}

variable "reservation_capcity_in_gb_per_day" {
  type        = number
  default     = null
  description = "(Optional) The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000."
  # NOTE: reservation_capcity_in_gb_per_day can only be used when the sku is set to CapacityReservation
  # NOTE: If law_sku_name is not CapacityReservation, then set the default value to null
}

#################################
# 
# Variables for Log Analytics Linked Storage Account
#
#################################

variable "data_source_type" {
  type        = string
  default     = "customlogs"
  description = "(Required) The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are customlogs, azurewatson, query, ingestion and alerts. Changing this forces a new Log Analytics Linked Storage Account to be created"
}

variable "workspace_resource_id" {
  type        = string
  default     = ""
  description = "(Required) The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created."
}

variable "storage_account_ids" {
  type        = list(string)
  default     = [""]
  description = "(Required) The storage account resource ids to be linked"
}