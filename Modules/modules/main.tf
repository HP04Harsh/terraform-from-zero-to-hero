terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "4.1"
      }
    }
}

provider "azurerm"{
    features {}
    subscription_id = "75c3f7fc-74c8-457f-a736-4516b6276c01" 
}

resource "azurerm_resource_group" "rg" {
    name = var.rg_name
    location = var.rg_loc
}