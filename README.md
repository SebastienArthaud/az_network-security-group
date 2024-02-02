# az_network-security-group

## Example usage 

Pour voir un exemple d'utilisation de ce module ce réferer au dossier "example".
Cloner le repot et effectuer un terraform init/plan/apply afin de voir un exemple de déploiement.

> ne pas oublier de faire un terraform destroy après avoir fait des tests


## Providers

| Name | Version |
|------|---------|
| [azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs) | >= 3.11, < 4.0 |


## Resources provisionés

| Name | Type |
|------|------|
| [azurerm_network_security_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_interface_security_group_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resourcegroup_name | Resource group name | `string` | null | yes |
| location | Région AZURE hébergeant les ressources créées | `string` | null | yes |
| name | Nom du NSG | `string` | null | yes |
| security_rule | Règles de sécurité du NSG à créer | `list(object({})` | [] |  no|
| subnet_id | ID du subnet lié au nsg, laisser vide si aucune association souhaitée ! | `string` | "" | no |
| nic_id | ID due la carte réseau liée au nsg, laisser vide si aucune association souhaitée ! | `string` | "" | no |


## Outputs

| Name | Description |
|------|-------------|
| network_security_group_id | ID du nsg créé |
| subnet_network_security_group_association_id | ID de l'association entre le NSG et le subnet (si il y en a une) |
| network_interface_security_group_association_id | ID de l'association entre le NSG et la carte réseau |