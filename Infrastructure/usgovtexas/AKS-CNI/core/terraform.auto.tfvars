#################################
# 
# Variables for General Deployment
#
#################################

resource_group_name = "rg-aks-cni-tx"

#################################
# 
# Variables for Resource Group
#
#################################

resource_groups = {
  resource_group_1 = {
    name     = "rg-aks-cni-tx"
    location = "usgovtexas"
    tags = {
      Owner   = "Erik Ha"
      Contact = "ErikHa@Microsoft.com"
      Project = "AKS Development"
      Alias2  = "no"
    }
  } 
}

#################################
# 
# Variables for Azure Virtual Network
#
#################################

virtual_networks = {
  virtual_network_1 = {
    address_space         = ["10.1.0.0/16"]
    bgp_community         = null
    dns_servers           = null
    location              = "usgovtexas"
    name                  = "vnet-aks-cni-tx"
    vm_protection_enabled = false
    tags = {
      Owner   = "Erik Ha"
      Contact = "ErikHa@Microsoft.com"
      Project = "AKS Development"
      Alias2  = "no"
    }
  }
}