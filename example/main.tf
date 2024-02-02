module "az_network-interface" {
  source             = "github.com/SebastienArthaud/az_network-security-group.git"
  resourcegroup_name = var.resourcegroup_name
  name               = var.name
  location           = var.location
  subnet_id          = var.subnet
}
