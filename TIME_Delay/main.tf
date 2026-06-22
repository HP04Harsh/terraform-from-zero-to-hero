
resource "azurerm_resource_group" "rg" {
    name = "RG-test"
    location = "eastus"
}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [azurerm_resource_group.rg]
  create_duration = "30s"
}
// wait for 30s before creating resource group 2
resource "azurerm_resource_group" "rg2" {
    name = "RG2-test"
    location = "westus"
}
