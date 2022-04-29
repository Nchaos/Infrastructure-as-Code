package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/require"
)

// Test the Terraform module in examples/complete using Terratest.
func TestKubernetesCluster(t *testing.T) {
	t.Parallel()

	// Set random Id and resource group name to avoid conflict if this is ran in parallel

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located - should point to an examples folder
		TerraformDir: "../../examples/",
		Upgrade:      true,
		// Variables to pass to our Terraform code using -var-file options
		VarFiles: []string{"fixtures.auto.tfvars"},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.Apply(t, terraformOptions)

	// Run `terraform output` to get the value of an output variable
	azureAutomationAccountIdsMap := terraform.Output(t, terraformOptions, "azure_automation_account_ids_map")

	expectedAzureAutomationAccountIdsMap := string("map[aa-val-tf:/subscriptions/d0ce61fb-0b7a-4f0d-9ea2-b1ae691749e0/resourceGroups/rg-aa-val-tf/providers/Microsoft.Automation/automationAccounts/aa-val-tf]")

	// Verify we're getting back the outputs we expect
	require.Equal(t, expectedAzureAutomationAccountIdsMap, azureAutomationAccountIdsMap)

	// Run `terraform output` to get the value of an output variable
	resourceGroupLocationMap := terraform.Output(t, terraformOptions, "resource_group_locations_map")

	expectedResourceGroupLocationMap := string("map[rg-aa-val-tf:usgovarizona]")
	// Verify we're getting back the outputs we expect
	require.Equal(t, expectedResourceGroupLocationMap, resourceGroupLocationMap)

}
