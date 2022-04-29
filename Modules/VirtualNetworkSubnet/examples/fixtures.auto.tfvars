resource_group_name  = "rg-subnet-val-tf"
virtual_network_name = "vnet-subnet-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-subnet-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

virtual_networks = {
  virtual_network_1 = {
    address_space         = ["10.10.0.0/16"]
    bgp_community         = null
    dns_servers           = null
    location              = "usgovarizona"
    name                  = "vnet-subnet-val-tf"
    vm_protection_enabled = false
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

subnets = {
  subnet_1 = {
    address_prefixes = ["10.10.1.0/24"]
    name             = "subnet-val-tf-001"
  }
}