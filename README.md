# Infrastructure-as-Code Terraform - General Information

1. Include a "fixtures.auto.tfvars" for unit testing

## Global Variables

## Pipeline Templates

## Infrastructure Scripts

1. You should be able to copy and paste an existing yaml pipeline into a new module
2. Change the "moduleName:" variable to match the directory name -  **THIS IS IMPORTANT**
   1. Naming standard is as follows - (Resource)
      1. Example - AutomationAccount, ContainerRegistry, KeyVault
3. If using a new Azure DevOps project, all the variables you need to edit are in the global.variables.yml file
   1. **backendTFStorageContainerName** - the name of the container that will store your remote state
   2. **backendTFRGName** - the name of the resource group that holds the storage account for remote state
   3. **backendTFStorageAccountName** - the name of the storage account that contains the container
   4. **backendTFStorageAccountRGLocation** - the location of the storage account
   5. **serviceConnection** - the name of the service connection that was created in Azure DevOps
   6. **storageKey** - leave this blank
