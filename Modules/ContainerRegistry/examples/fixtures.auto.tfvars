location    = "usgovarizona"
environment = "dev"
app_name    = "val-acr"
tags = {
  Owner   = "Erik Ha"
  Alias   = "ErikHa@Microsoft.com"
  Project = "Terraform Development"
  Alias2  = "no"
}

container_sku = "Premium"
georeplications = [
  {
    location                  = "usgovtexas"
    regional_endpoint_enabled = true
    zone_redundancy_enabled   = true
    tags                      = {}
  }
]