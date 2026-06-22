variable "resource_group_name"{
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = "eastus"
}