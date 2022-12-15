AKS cluster can be created by many ways as mentioned below:

1. Create AKS cluster in Azure portal directly

2. Create AKS cluster using Azure CLI

3. Create AKS cluster using Terraform. 

>>> Creating an AKS resource with Terraform is incredibly easy, it only requires a single resource azurerm_kubernetes_cluster and in this post, we are going to walk through \
the necessary steps to create this with Terraform. We will create ACR and create a role with ACRpull assignment as well.

Pre-requistes:
================
Terraform is installed on your machine.
Account setup in Azure.
Kubectl is installed on your machine
Azure cli is installed
Login to Azure using credentials
Make sure you are login to Azure portal first.

az login

Choose your Microsoft subscription credentials. 

Let's create following tf files using Visual studio Code:

1. Variables.tf - where we will define the variables used in main.tf
2. terraform.tfvars - Declare the values for the variables
3. providers.tf - declare the providers with version
4. main.tf - main configuration file with all the resources which will be created
5. output.tf - Export some data to output file
Already available above configuration files in this folder, please refer to understand.

===========================Thank you===========================
