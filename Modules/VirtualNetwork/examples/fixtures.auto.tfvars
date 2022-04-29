location    = "usgovarizona"
environment = "dev"
app_name    = "tf-vnet-val"
tags = {
  Owner   = "Erik Ha"
  Alias   = "ErikHa@Microsoft.com"
  Project = "Terraform Development"
  Alias2  = "no"
}

address_space = ["10.0.0.0/16"]
subnet = [{
  address_prefix = "10.0.1.0/24"
  name           = "snet-test"
  security_group = null
  id             = null
}]