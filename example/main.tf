module "az_network-interface" {
  source             = "../../az_network-security-group"
  resourcegroup_name = var.resourcegroup_name
  name               = var.name
  location           = var.location
  subnet_id          = var.subnet
}