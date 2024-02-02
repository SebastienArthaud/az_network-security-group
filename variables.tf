variable "resourcegroup_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Région AZURE hébergeant les ressources créées"
}

variable "name" {
  type        = string
  description = "Nom du NSG"
}

variable "security_rule" {
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
  default     = []
  description = "Règles de sécurité du NSG à créer"
}

variable "subnet_id" {
  type        = string
  description = "ID du subnet lié au nsg, laisser vide si aucune association souhaitée ! "
  default     = ""
}

variable "nic_id" {
  type        = string
  description = "ID de la carte réseau liée au nsg, laisser vide si aucune association souhaitée ! "
  default     = ""
}