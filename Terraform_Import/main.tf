import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/75c3f7fc-74c8-457f-a736-4516b6276c01/resourceGroups/Test-rg"
}

resource "azurerm_resource_group" "rg" {
  name     = "Test-rg"
  location = "westus"
}