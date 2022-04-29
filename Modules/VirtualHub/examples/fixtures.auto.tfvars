resource_group_name = "rg-vhub-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-vhub-val-tf"
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
    name                              = "vwan-vhub-val-tf"
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

virtual_hubs = {
  "virtual_hub_1" = {
    address_prefix = "10.0.0.0/23"
    location       = "usgovarizona"
    name           = "vhub-val-tf"
    sku            = "Standard"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}