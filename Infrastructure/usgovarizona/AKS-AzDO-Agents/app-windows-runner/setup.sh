ACR_NAME='acrsharedprd'
RG_NAME='VA-PATS-R-AKS-POC'
AKS_NAME='VA-PATS-R-AKS'

echo "=> Setting up $AKS_NAME cluster to pull images from $ACR_NAME"
az aks install-cli

echo "=> Retrieving credentials to access $AKS_NAME"
az aks get-credentials --resource-group $RG_NAME --name $AKS_NAME --overwrite-existing

# attach-acr is iffy
#echo "=> Attaching $ACR_NAME to $AKS_NAME"
#az aks update --name $AKS_NAME --resource-group $RG_NAME --attach-acr $ACR_NAME

# echo "Creating role assignment for $AKS_NAME to pull images from $ACR_NAME"
# CLIENT_ID=$(az aks show --resource-group $RG_NAME --name $AKS_NAME --query "identityProfile.kubeletidentity.clientId" --output tsv)
# ACR_ID=$(az acr show --name $ACR_NAME --resource-group $RG_NAME --query "id" --output tsv)
# # az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID
# echo "=> Owners - please run - az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID whenever you have the time."

# Assumes ACR Admins is enabled
echo "=> Creating ACR secrets"
ACR_UNAME=$(az acr credential show -n $ACR_NAME --query="username" -o tsv)
ACR_PASSWD=$(az acr credential show -n $ACR_NAME --query="passwords[0].value" -o tsv)
ACR_NAME=$(echo $ACR_NAME.azurecr.us)

kubectl create secret docker-registry acr-secret --docker-server=$ACR_NAME --docker-username=$ACR_UNAME --docker-password=$ACR_PASSWD --docker-email=ignorethis@email.com

echo "=> Patching default serviceaccount to pull ACR images"
kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "acr-secret"}]}'

echo "=> Applying yaml files for AzDO Agent Deployment"
kubectl apply -f azdevops-secret.yaml
kubectl apply -f aks-azdo-deployment.yaml
kubectl apply -f aks-azdo-hpav2.yaml
