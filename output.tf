output "network_security_group_id" {
  description = "ID du nsg créé"
  value       = resource.azurerm_network_security_group.az_network-security-group.id
}

output "subnet_network_security_group_association_id" {
  description = "ID de l'association entre le NSG et le subnet"
  value       = var.subnet_id != "" ? resource.azurerm_subnet_network_security_group_association.subnet_nsg_association[0].id : null
}

output "network_interface_security_group_association_id" {
  description = "ID de l'association entre le NSG et la carte réseau"
  value       = var.nic_id != "" ? resource.azurerm_network_interface_security_group_association.nic_nsg_association[0].id : null
}