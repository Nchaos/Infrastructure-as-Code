AZP_POOL64=$(echo -n $AZP_POOL | base64)

echo "##vso[task.setvariable variable=azpPool]$AZP_POOL64"
