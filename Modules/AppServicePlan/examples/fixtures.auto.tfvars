resource_group_name = "rg-asp-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-asp-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

app_service_plans = {
  asp1 = {
    app_service_environment_id   = null
    is_xenon                     = false
    kind                         = "FunctionApp"
    location                     = "usgovarizona"
    maximum_elastic_worker_count = 2
    name                         = "asp-func-val-tf"
    per_site_scaling             = false
    reserved                     = false
    sku_capacity                 = 1
    sku_size                     = "Y1"
    sku_tier                     = "Dynamic"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  },

  asp2 = {
    app_service_environment_id   = null
    is_xenon                     = false
    kind                         = "Linux"
    location                     = "usgovarizona"
    maximum_elastic_worker_count = 2
    name                         = "asp-linux-val-tf"
    per_site_scaling             = false
    reserved                     = true
    sku_capacity                 = 1
    sku_size                     = "S1"
    sku_tier                     = "Standard"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  },

  asp3 = {
    app_service_environment_id   = null
    is_xenon                     = false
    kind                         = "Windows"
    location                     = "usgovarizona"
    maximum_elastic_worker_count = 2
    name                         = "asp-windows-val-tf"
    per_site_scaling             = false
    reserved                     = false
    sku_capacity                 = 1
    sku_size                     = "S1"
    sku_tier                     = "Standard"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }

}

