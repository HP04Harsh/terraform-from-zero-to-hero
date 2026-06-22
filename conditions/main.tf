variable "environment" {
  description = "Asking for prod apporval"
}

resource "azurerm_resource_group" "rg-test" {
  name     = "Test-RG"
  location = var.environment == "prod" ? "eastus" : "westus"
}