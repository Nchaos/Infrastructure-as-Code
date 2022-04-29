RG_NAME=$(cat AKS-AzDO-core.tfstate | jq -r '.outputs .resource_group_ids_map .value' | jq -r 'keys[0]')
AKS_NAME=$(cat AKS-AzDO-k8s-cluster.tfstate | jq -r '.outputs .aks_resource_ids_map .value' | jq -r 'keys[0]')

echo "=> Retrieving credentials to access $AKS_NAME"
az aks get-credentials --resource-group $RG_NAME --name $AKS_NAME --overwrite-existing

echo "=> Getting current AKS version"
CURRENT_AKS_VERSION=$(az aks show --resource-group $RG_NAME --name $AKS_NAME | jq -r '.agentPoolProfiles[] .orchestratorVersion')

SUPPORTED_AKS_VERSIONS=$(az aks get-versions --location usgovarizona | jq -r '.orchestrators[] .orchestratorVersion')

SUPPORTED_AKS_VERSIONS_ARRAY=($SUPPORTED_AKS_VERSIONS)

if [[ ! " ${SUPPORTED_AKS_VERSIONS_ARRAY[@]} " =~ " ${CURRENT_AKS_VERSION} " ]]; 
then
    echo "Kubernetes version $CURRENT_AKS_VERSION is not supported"
    echo "Please upgrade your cluster to one of the following versions: ${SUPPORTED_AKS_VERSIONS_ARRAY[@]}"
    exit 1
else
    echo "Kubernetes version $CURRENT_AKS_VERSION is supported. No action required."
    exit 0
fi
