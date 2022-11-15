terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-centralindia"
    storage_account_name = "csg100320024380adcb"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}