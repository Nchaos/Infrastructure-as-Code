resource_group_name = "rg-aa-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-aa-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

automation_accounts = {
  automation_account_1 = {
    location = "usgovarizona"
    name     = "aa-val-tf"
    sku_name = "Basic"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}