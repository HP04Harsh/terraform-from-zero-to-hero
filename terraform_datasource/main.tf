data "azurerm_resource_group" "resource_group" {
    name = "Test-rg"
}

resource "azurerm_resource_group" "rg-data" {
    name = "Test-rg-data"
    location = data.azurerm_resource_group.resource_group.location
}