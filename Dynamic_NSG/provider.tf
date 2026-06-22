terraform {
  required_version = ">1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "75c3f7fc-74c8-457f-a736-4516b6276c01"
}