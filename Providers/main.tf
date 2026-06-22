resource "azurerm_resource_group" "rg-group" {
  name     = "Test-rg"
  location = "westus"
  tags = {
    "env" : "prod"
  }
}