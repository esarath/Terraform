# Terraform
Terraform (Provider Azurerm)

Fundamentals
Get to grips with using Terraform to deploy Azure resources.

Overview
This is a set of short and simple labs to introduce you to the Terraform workflow, the basics of the HCL file format and where to find documentation for the azurerm provider types.

The series is based on the Terraform v1.x and azurerm provider v3.x.

Pre-reqs
Everything will be run within the bash version of the Azure Cloud Shell which already has Terraform installed and maintained for you, so all you need for these labs is an active Azure subscription.

Initialise
Use `terraform init` to initialise a terraform environment, downloading providers and modules.

Format
Create a variables.tf and main.tf. Use `terraform fmt` to automatically format the files.

Validate
Use `terraform validate` to confirm that the files are syntactically and logically sound. Add a new variable to variables.tf.

Plan
Start working with terraform.tfvars to specify your variable values and then use `terraform plan` to display the actions that Terraform will take.

Apply
Apply your configuration to create resources and then examine the state file.

Adding resources
Use the azurerm documentation to add a resource to your configuration.

Locals and outputs
Use locals and functions to generate a unique value, and add a couple of outputs.

Managing state
Common lifecycle management areas that deal with state with refresh, ignore, move and taint.

Importing resources
Step through an example of importing an existing resource into Terraform.

Destroy
Short lab to tear down the environment.
