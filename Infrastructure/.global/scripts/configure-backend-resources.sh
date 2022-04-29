VALIDATE_SA_CONTAINER_EXISTS=$(az storage container exists --account-name $BACKENDTFSTORAGEACCOUNTNAME --name $BACKENDTFSTORAGECONTAINERNAME -o tsv)
BACKEND_SA_RG=$(az storage account show --name $BACKENDTFSTORAGEACCOUNTNAME | jq -r .resourceGroup)
echo "==> Checking if backend storage account is configured"
if [[ True == "${VALIDATE_SA_CONTAINER_EXISTS:-}" ]]; then
  echo "==> The container $BACKENDTFSTORAGECONTAINERNAME exists under $BACKENDTFSTORAGEACCOUNTNAME which is part of the $BACKEND_SA_RG resource group."
else
  echo "==> The container $BACKENDTFSTORAGECONTAINERNAME was not found - proceeding to re-create all resources."
  az group create --location $BACKENDTFSTORAGEACCOUNTRGLOCATION --name $BACKENDTFRGNAME --tags 'Alias=ErikHa@microsoft.com' 'Project=Terraform Development'
  az storage account create -name --name $BACKENDTFSTORAGEACCOUNTNAME --resource-group $BACKENDTFRGNAME --location $BACKENDTFSTORAGEACCOUNTRGLOCATION --sku Standard_LRS --tags 'Alias=ErikHa@microsoft.com' 'Project=Terraform Development'
  az storage container create --name $BACKENDTFSTORAGECONTAINERNAME --account-name $BACKENDTFSTORAGEACCOUNTNAME
  BACKEND_SA_RG=$(az storage account show --name $BACKENDTFSTORAGEACCOUNTNAME | jq -r .resourceGroup)
fi

KEY=$(az storage account keys list --resource-group $BACKEND_SA_RG --account-name $BACKENDTFSTORAGEACCOUNTNAME | jq -r '.[0] .value')
echo "##vso[task.setvariable variable=storageKey]$KEY"
