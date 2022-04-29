#################################
# 
# Variables for General Deployment
#
#################################

location    = "usgovarizona"
environment = "prod"
app_name    = "azdoagents"
tags = {
  Owner   = "Erik Ha"
  Contact = "ErikHa@Microsoft.com"
  Project = "Terraform Development"
  Alias2  = "no"
}

#################################
# 
# Variables for Azure Container Registry
#
#################################

admin_enabled = true
container_sku = "Standard"

#################################
# 
# Variables for Azure Key Vault
#
#################################

key_vault_sku = "standard"