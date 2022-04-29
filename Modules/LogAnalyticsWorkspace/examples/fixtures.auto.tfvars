resource_group_name = "rg-law-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-law-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

log_analytics_workspaces = {
  log_analytics_workspace_1 = {
    daily_quota_gb                    = null
    internet_ingestion_enabled        = true
    internet_query_enabled            = true
    location                          = "usgovarizona"
    name                              = "law-val-tf-rick05032021"
    reservation_capcity_in_gb_per_day = 100
    retention_in_days                 = 7
    sku                               = "Free"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}
