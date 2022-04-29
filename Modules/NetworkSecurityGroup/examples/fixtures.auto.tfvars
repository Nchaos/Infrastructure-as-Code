resource_group_name = "rg-nsg-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-nsg-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

network_security_groups = {
  network_security_group_1 = {
    name     = "nsg-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}