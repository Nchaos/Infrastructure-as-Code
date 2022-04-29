resource_group_name = "rg-sa-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-sa-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

storage_accounts = {
  storage_account_1 = {
    access_tier               = null
    account_kind              = null
    account_replication_type  = "LRS"
    account_tier              = "Standard"
    allow_blob_public_access  = false
    enable_https_traffic_only = true
    is_hns_enabled            = false
    large_file_share_enabled  = null
    location                  = "usgovarizona"
    min_tls_version           = "TLS1_2"
    name                      = "savaltfrick05032021"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}