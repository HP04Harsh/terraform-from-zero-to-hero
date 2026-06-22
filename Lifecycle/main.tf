resource "azurerm_resource_group" "rg_group" {
  name     = "Test-rg"
  location = "westus"
  tags = {
    "env" : "prod"
  }

  lifecycle {
    # prevents the resource from being deleted by terraform destroy
    prevent_destroy = true
    # ignores changes made to tags outside of terraform (e.g., via Azure Portal)
    ignore_changes = [tags]
    # ensures a new resource is created before the old one is destroyed
    create_before_destroy = true
  }
}