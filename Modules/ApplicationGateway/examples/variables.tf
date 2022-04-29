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
  default     = "rg"
  description = "Solution name, e.g. `app` or `jenkins`"
}

variable "location" {
  type    = string
  default = "East US"
}

#################################
# 
# Variables for Virtual Network
#
#################################

variable "virtual_network_name" {
  type        = string
  default     = "vnet"
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created"
}

variable "virtual_network_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "virtual_network_dns_servers" {
  type        = list(string)
  default     = []
  description = "(Optional) List of IP addresses of DNS servers"
}

variable "subnet_network_name" {
  type        = string
  default     = "subnet"
  description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
}

variable "subnet_address_prefixes" {
  type        = list(string)
  default     = []
  description = "(Optional) The address prefixes to use for the subnet."
}

#################################
# 
# Variables for Public IP
#
#################################

variable "public_ip_name" {
  type        = string
  default     = "publicip"
  description = "(Required) Specifies the name of the Public IP resource . Changing this forces a new resource to be created."
}

variable "public_ip_sku" {
  type        = string
  default     = "Basic"
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic"
}

variable "public_ip_allocation_method" {
  type        = string
  default     = "Static"
  description = "(Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic"
}

variable "public_ip_ip_version" {
  type        = string
  default     = "IPv4"
  description = "(Optional) The IP Version to use, IPv6 or IPv4."
}

#################################
# 
# Variables for Application Gateway
#
#################################

variable "application_gateway_name" {
  type        = string
  default     = "appgw"
  description = "The name of the application gateway"
}

variable "app_gw_sku" {
  type        = string
  default     = ""
  description = "(Required) The Name of the SKU to use for this Application Gateway. Possible values are Standard_Small, Standard_Medium, Standard_Large, Standard_v2, WAF_Medium, WAF_Large, and WAF_v2"
}

variable "app_gw_tier" {
  type        = string
  default     = ""
  description = "(Required) The Tier of the SKU to use for this Application Gateway. Possible values are Standard, Standard_v2, WAF and WAF_v2"
}

variable "app_gw_capacity" {
  type        = number
  default     = 2
  description = "(Required) The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between 1 and 32, and 1 to 125 for a V2 SKU. This property is optional if autoscale_configuration is set"
}

variable "gateway_subnet_id" {
  type        = string
  default     = ""
  description = "(Required) The ID of the Subnet which the Application Gateway should be connected to"
}

variable "frontend_port" {
  type        = number
  default     = 80
  description = "(Required) The port used for this Frontend Port"
}

variable "public_ip_address_id" {
  type        = string
  default     = ""
  description = "(Required) The ID of the Subnet which the Application Gateway should be connected to"
}

variable "cookie_based_affinity" {
  type        = string
  default     = ""
  description = "(Required) Is Cookie-Based Affinity enabled? Possible values are Enabled and Disabled"
}

variable "http_listener_protocol" {
  type        = string
  default     = ""
  description = "(Required) The Protocol to use for this HTTP Listener. Possible values are Http and Https"
}

variable "backend_http_path" {
  type        = string
  default     = ""
  description = "(Optional) The Path which should be used as a prefix for all HTTP requests"
}

variable "backend_port" {
  type        = number
  description = "(Required) The port which should be used for this Backend HTTP Settings Collection."
}

variable "backend_protocol" {
  type        = string
  default     = ""
  description = "(Required) The Protocol which should be used. Possible values are Http and Https"
}

variable "backend_request_timeout" {
  type        = number
  description = "(Required) The request timeout in seconds, which must be between 1 and 86400 seconds"
}

variable "routing_rule_type" {
  type        = string
  default     = ""
  description = "(Required) The Type of Routing that should be used for this Rule. Possible values are Basic and PathBasedRouting"
}
