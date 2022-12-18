provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.39.0"
    }
  }
}


resource "azurerm_resource_group" "resource_group" {
  location = "eastus2"
  name     = "app-service-rg"

}

resource "azurerm_app_service_plan" "app_service_plan" {
  location            = "azurerm_resource_group.resource_group.location"
  name                = "appebooks_plan"
  resource_group_name = "azurerm_resource_group.resource_group.name"
  sku {
    size = "Standrad"
    tier = "F1"
  }

}

resource "azurerm_app_service" "appservice" {
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  location            = azurerm_app_service_plan.app_service_plan.location
  name                = "webappebooks"
  resource_group_name = azurerm_resource_group.resource_group.name

  #(Optional)
  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                       = "LocalGit"
  }

  #(Optional)
  app_settings = {
    "SOME_KEY" = "some-value"
  }

}

