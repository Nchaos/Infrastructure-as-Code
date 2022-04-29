resource_group_name = "rg-nsr-val-tf"

resource_groups = {
  resource_group_1 = {
    name     = "rg-nsr-val-tf"
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
    name     = "nsr-val-tf"
    location = "usgovarizona"
    tags = {
      Owner   = "Erik Ha"
      Alias   = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  }
}

network_security_rules = {
  network_security_rules_1 = {
    access                                     = "Allow"
    description                                = "Created by Terraform"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = null
    destination_application_security_group_ids = null
    destination_port_range                     = "22"
    destination_port_ranges                    = null
    direction                                  = "Inbound"
    name                                       = "SSH-inbound"
    network_security_group_name                = "nsr-val-tf"
    priority                                   = 100
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = null
    source_application_security_group_ids      = null
    source_port_range                          = "*"
    source_port_ranges                         = null
  }
}