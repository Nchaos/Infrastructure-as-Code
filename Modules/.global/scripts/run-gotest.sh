# Add Golang repository to update to the most recent one
add-apt-repository ppa:longsleep/golang-backports && apt-get update; \
apt-get install -y --no-install-recommends \
golang-go=2:1.16-1longsleep1+bionic \
build-essential

go mod tidy

# Get Azure account details
echo "==> Setting Subscription environment variables"
if [[ ! -z "${servicePrincipalId:-}" ]]; then
  SUBSCRIPTION_ID=$(az account show --query 'id' --output tsv)
  TENANT_ID=$(az account show --query 'tenantId' --output tsv)
  CLIENT_ID=${servicePrincipalId:-}
  CLIENT_SECRET=${servicePrincipalKey:-}
else
  SUBSCRIPTION_ID=""
  TENANT_ID=""
  CLIENT_ID=""
  CLIENT_SECRET=""
fi

# Define environment variables
export ARM_SUBSCRIPTION_ID=${ARM_SUBSCRIPTION_ID:-$SUBSCRIPTION_ID} \
  ARM_TENANT_ID=${ARM_TENANT_ID:-$TENANT_ID} \
  ARM_CLIENT_ID=${ARM_CLIENT_ID:-$CLIENT_ID} \
  ARM_CLIENT_SECRET=${ARM_CLIENT_SECRET:-$CLIENT_SECRET}

# Go version currently utilized - 2:1.16-1longsleep1+bionic on Ubuntu-18.04
go version

echo "==> Running Go Test for $MODULENAME"
go test -v -timeout 30m -count=1