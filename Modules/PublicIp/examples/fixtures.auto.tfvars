resource_group_name = "rg-pip-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-pip-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

public_ips = {
  public_ip_1 = {
    allocation_method = "Dynamic"
    name              = "pip-val-tf"
    location          = "usgovarizona"
    sku               = "Basic"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
    zones = []
  }
}