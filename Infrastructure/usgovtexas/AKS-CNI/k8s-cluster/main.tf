data "terraform_remote_state" "core" {
  backend = "azurerm"

  config = {
    storage_account_name = "usdciacstfsa"
    container_name       = "terraform-state"
    key                  = "AKS-AzDO-core.tfstate"
    access_key           = "__storageKey__"
    environment          = "usgovernment"
  }
}

module "kubernetes_cluster" {
  source                    = "../../../Modules/KubernetesCluster"
  resource_group_name       = var.resource_group_name
  aks_clusters              = var.aks_clusters
  addon_profile             = var.addon_profile
  auto_scaler_profile       = var.auto_scaler_profile
  default_node_pool         = var.default_node_pool
  identity                  = var.identity
  linux_profile             = var.linux_profile
  network_profile           = var.network_profile
  role_based_access_control = var.role_based_access_control
  service_principal         = var.service_principal
  windows_profile           = var.windows_profile
}
