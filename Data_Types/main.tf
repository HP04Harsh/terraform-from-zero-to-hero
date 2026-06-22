variable "regions" {
  type        = list(string)
  default     = ["eastus", "westus"]
  description = "List of azure regions"
}

variable "env_config" {
  type = map(string)
  default = {
    "env"    = "prod"
    "region" = "westus"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "Test-RG"
  location = var.env_config["region"]
}