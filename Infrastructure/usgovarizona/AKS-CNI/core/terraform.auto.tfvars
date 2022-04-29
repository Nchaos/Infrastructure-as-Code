#################################
# 
# Variables for General Deployment
#
#################################

location    = "usgovarizona"
environment = "prod"
app_name    = "akscni"
tags = {
  Owner   = "Erik Ha"
  Contact = "ErikHa@Microsoft.com"
  Project = "Terraform Development"
  Alias2  = "no"
}

#################################
# 
# Variables for Azure Virtual Network
#
#################################

address_space = ["10.0.0.0/16"]
subnet = [{
  address_prefix = "10.0.1.0/24"
  name           = "snet-aks-001"
  security_group = null
  id             = null
}]

#################################
# 
# Variables for Azure Container Registry
#
#################################

container_sku = "Premium"
georeplications = [ 
  {
    location = "usgovtexas"
    zone_redundancy_enabled = false
    tags = {
      Owner   = "Erik Ha"
      Contact = "ErikHa@Microsoft.com"
      Project = "Terraform Development"
      Alias2  = "no"
    }
  } 
]