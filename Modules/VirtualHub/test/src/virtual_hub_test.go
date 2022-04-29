package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/require"
)

// Test the Terraform module in examples/complete using Terratest.
func TestVirtualHub(t *testing.T) {
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
	virtualHubIdsMap := terraform.Output(t, terraformOptions, "virtual_hub_ids_map")

	expectedvirtualHubIdsMap := string("map[vhub-val-tf:/subscriptions/d0ce61fb-0b7a-4f0d-9ea2-b1ae691749e0/resourceGroups/rg-vhub-val-tf/providers/Microsoft.Network/virtualHubs/vhub-val-tf]")

	// Verify we're getting back the outputs we expect
	require.Equal(t, expectedvirtualHubIdsMap, virtualHubIdsMap)

	// Run `terraform output` to get the value of an output variable
	resourceGroupLocationMap := terraform.Output(t, terraformOptions, "resource_group_locations_map")

	expectedResourceGroupLocationMap := string("map[rg-vhub-val-tf:usgovarizona]")
	// Verify we're getting back the outputs we expect
	require.Equal(t, expectedResourceGroupLocationMap, resourceGroupLocationMap)

}
