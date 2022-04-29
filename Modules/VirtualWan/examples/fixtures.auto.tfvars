resource_group_name = "rg-vwan-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-vwan-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

virtual_wans = {
  "virtual_wan_1" = {
    allow_branch_to_branch_traffic    = true
    disable_vpn_encryption            = false
    location                          = "usgovarizona"
    name                              = "vwan-val-tf"
    office365_local_breakout_category = "None"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
    type = "Standard"
  }
}
