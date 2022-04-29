#################################
# 
# Variables for Virtual WAN
#
#################################

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created"
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
