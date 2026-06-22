variable "location" {
  type    = list(string)
  default = ["eastus", "westus", "centralindia"]
}

/*
Another type of variable declarations
varibale "rg_list" {
  type = list[onject({
    name = string
    location = string
  })]

  default = [
    {name = "web-rg", location = "eastus"}
  ]
}
*/
variable "rg_names" {
  type = set(string)
  default = ["web-rg","db-rg","net-rg"]
}

/* resource "azurerm_resource_group" "rg_group" {
  count    = 3
  name     = "Test-rg-${count.index}-each.value"
  location = var.location[count.index]

} */

resource "azurerm_resource_group" "rg_group" {
  for_each = var.rg_names
  name     = "Test-rg-${each.value}"
  location = "eastus"
}

# output "resource_groups" {
#    data = [for rg in azurerm_resource_group.rg_group : rg.name]
# }
output "resource-group-keys" {
  value = zipmap(
    [for rg in azurerm_resource_group.rg_group : rg.id],
    [for rg in azurerm_resource_group.rg_group : rg.name]
  )
}