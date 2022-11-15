//Azure provider source and version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.30.0"
    }
  }
}

//Configure the azure provider
provider "azurerm" {
  features {
  }

}

//Create a resource group
resource "azurerm_resource_group" "a0jx-eastus-rg1" {
  location = "eastus"
  name     = "a0jx-eastus-rg1"

}

//Create a first vnet with in rg="a0jx-eastus-rg1"
resource "azurerm_virtual_network" "a0jx-eastus-vnet1" {
    address_space = [ "10.0.0.0/16" ]
    location = "eastus"
    name = "a0jx-eastus-vnet1"
    resource_group_name = "a0jx-eastus-rg1"
    
}

//Create a second vnet with in rg="a0jx-eastus-rg1"
resource "azurerm_virtual_network" "a0jx-eastus-vnet2" {
    address_space = [ "10.0.0.0/22" ]
    location = "eastus"
    name = "a0jx-eastus-vnet2"
    resource_group_name = "a0jx-eastus-rg1"
    
}

//Create a subnet with in the vnet1
resource "azurerm_subnet" "a0jx-vnet1-snet1" {
    address_prefixes = [ "10.0.1.0/24" ]
    name = "a0jx-vnet1-snet1"
    resource_group_name = "a0jx-eastus-rg1"
    virtual_network_name = "a0jx-eastus-vnet1"
    
}
 
