resource "azurerm_network_security_group" "az_network-security-group" {
  resource_group_name = var.resourcegroup_name
  location            = var.location
  name                = var.name

  dynamic "security_rule" {
    for_each = var.security_rule != [] ? var.security_rule : null
    content {
      name                       = var.security_rule.value.name
      priority                   = var.security_rule.value.priority
      direction                  = var.security_rule.value.direction
      access                     = var.security_rule.value.access
      protocol                   = var.security_rule.value.protocol
      source_port_range          = var.security_rule.value.source_port_range
      destination_port_range     = var.security_rule.value.destination_port_range
      source_address_prefix      = var.security_rule.value.source_address_prefix
      destination_address_prefix = var.security_rule.value.destination_address_prefix
    }
  }
}


resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  count                     = var.subnet_id != "" ? 1 : 0
  subnet_id                 = var.subnet_id
  network_security_group_id = resource.azurerm_network_security_group.az_network-security-group.id
}

resource "azurerm_network_interface_security_group_association" "nic_nsg_association" {
  count                     = var.nic_id != "" ? 1 : 0
  network_security_group_id = resource.azurerm_network_security_group.az_network-security-group.id
  network_interface_id      = var.nic_id
}