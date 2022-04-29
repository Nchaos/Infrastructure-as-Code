#################################
# 
# Variables for Virtual WAN
#
#################################


variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created"
}


variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  default = {}
}

variable "virtual_wans" {
  type = map(object(
    {
      # Specify whether branch to branch traffic is allowed.
      allow_branch_to_branch_traffic = bool
      # Specify whether VPN encryption is disabled
      disable_vpn_encryption = bool
      location               = string
      name                   = string
      # Specifies the Office365 local breakout category. Possible values include: Optimize, OptimizeAndAllow, All, None.
      office365_local_breakout_category = string
      # Specifies the Virtual WAN type. Possible Values include: Basic and Standard
      type = string
      tags = map(string)
    }
  ))
  default = {}
}

variable "virtual_hubs" {
  type = map(object(
    {
      # The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. The address prefix subnet cannot be smaller than a /24. Azure recommends using a /23.
      address_prefix = string
      location       = string
      name           = string
      # The sku of the Virtual Hub. Possible values are Basic and Standard. Changing this forces a new resource to be created.
      sku  = string
      tags = map(string)
    }
  ))
  default = {}
}

variable "route" {
  type = set(object(
    {
      address_prefixes    = list(string)
      next_hop_ip_address = string
  }))
  default = []
}

variable "virtual_wan_id" {
  type    = string
  default = ""
}
