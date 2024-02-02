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

variable "subnet" {
  type = string
}