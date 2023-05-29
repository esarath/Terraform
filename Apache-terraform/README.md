Apache-terraform:: Deploy an Apache Webserver on an Azure VM using terraform

In this post, we will go through deploying an Apache Webserver on an Azure VM using Terraform.

Additional Resources

Link to the GitHub repository: 

https://github.com/esarath/Terraform/tree/9577fcd82451f94c4ec23a455f39e49804ef4296/Apache-terraform

Azure Cloud Architecture

Before setting up an apache web server, we have to create the Azure cloud architecture that we will deploy. The minimum Azure cloud infrastructure for creating an Azure VM consists of:

‍Azure Storage Account

‍Azure Virtual Network (Vnet)

‍Azure Subnet (Subnet)

Azure Public IP (PIP)

‍Azure Network Security Group (NSG)

‍Azure Network Interface (NIC)

Azure Virtual Machine (VM)

‍Azure OS Disk

![image](https://github.com/esarath/Terraform/assets/113832685/1a9b54dd-07db-4080-bc0a-57787b00cb31)
