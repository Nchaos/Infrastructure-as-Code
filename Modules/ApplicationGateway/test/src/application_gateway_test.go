package test

import (
	"testing"
	"fmt"
	"strings"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// Test the Terraform module in examples/complete using Terratest.
func TestApplicationGateway(t *testing.T) {
	t.Parallel()

	// Set random Id and resource group name to avoid conflict if this is ran in parallel
	uniqueId := strings.ToLower(random.UniqueId())
	resource_group_name := fmt.Sprintf("rg-%s", uniqueId)

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located - should point to an examples folder
		TerraformDir: "../../examples/",
		Upgrade:      true,
		// This does not override variables from fixtures.tfvars
		Vars: map[string]interface{} {
			"resource_group_name": resource_group_name,
		},
		// Variables to pass to our Terraform code using -var-file options
		VarFiles: []string{"fixtures.tfvars"},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.Apply(t, terraformOptions)

	// Run `terraform output` to get the value of an output variable
	resourceGroupName := terraform.Output(t, terraformOptions, "resource_group_name")

	expectedResourceGroupName := fmt.Sprintf("%s-usdc-dev", resource_group_name)
	// Verify we're getting back the outputs we expect
	assert.Equal(t, expectedResourceGroupName, resourceGroupName)

	// Run `terraform output` to get the value of an output variable
	resourceGroupLocation := terraform.Output(t, terraformOptions, "resource_group_location")

	expectedResourceGroupLocation := "usgovarizona"
	// Verify we're getting back the outputs we expect
	assert.Equal(t, expectedResourceGroupLocation, resourceGroupLocation)

}