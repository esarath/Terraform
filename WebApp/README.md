Deploy a web app in Azure App Service using Terraform 
======================================================
To deploy the web app in Azure App Service using Terraform, here are the steps we need to follow:

1. Create the Resource Group
2. Create App Service plan and deploy web app

Create the Resource Group:

The first step is to create a resource group using the following terraform code. Any resource that is created must be created within the resource group.

Create App Service plan and deploy web app:

The App Service plan defines the capacity and resources to be shared among one or more app services that are assigned to that plan. 
Azure WebApp must be associated with an App Service Plan as it specifies the computing resources that are required for the web app to function.

And add code for creating app service. Finally, the terraform file looks like and refer "app-service-main.tf"

We should run the the below terraform commands for deployment: 
$ terraform init
$ terraform fmt
$ terraform validate
$ terraform plan
$ terraform apply

Finally, We can verify the app service created in the specified app service plan and resource group by checking in the Azure portal.
