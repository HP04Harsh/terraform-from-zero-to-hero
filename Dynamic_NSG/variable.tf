variable "rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))

  default = [
    { name = "HTTP", priority = 100, direction = "Inbound", access = "Allow", protocol = "Tcp",
    source_port_range = "*", destination_port_range = "80", source_address_prefix = "*", destination_address_prefix = "*" },
    { name = "SSH", priority = 110, direction = "Inbound", access = "Allow", protocol = "Tcp",
    source_port_range = "*", destination_port_range = "22", source_address_prefix = "*", destination_address_prefix = "*" }

  ]
}