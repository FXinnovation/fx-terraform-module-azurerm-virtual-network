# terraform-module-azurerm-virtual-network

## Usage

This module is used to deploy a single virtual network.

This virtual network supports custom address spaces, custom DNS servers and being linked to a standard SKU DDoS protection plan (Note that you have a limit of one plan per region (Azure limitation)).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 1.44.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| enable\_nsg | Enable or disable NSG deployment. | `bool` | n/a | yes |
| enabled | Enable or disable module | `bool` | `true` | no |
| location | Location of the virtual network. | `string` | n/a | yes |
| network\_security\_groups\_config | Object containing deployment information for network security groups. | `any` | n/a | yes |
| resource\_group\_name | Resource group where the vnet resides. | `string` | n/a | yes |
| subnets\_config | Object containing deployment information for subnets. | `any` | n/a | yes |
| tags | Tags to add to the virtual network. | `map` | `{}` | no |
| virtual\_network\_address\_space | The address space that is used by the virtual network | `list` | <pre>[<br>  "10.0.0.0/8"<br>]</pre> | no |
| virtual\_network\_dns\_servers | List of IP addresses of DNS servers | `list` | `[]` | no |
| virtual\_network\_name | Name of the virtual network. | `string` | n/a | yes |
| virtual\_network\_network\_ddos\_protection\_plan | Object containing bool about enabling ddos plan and ID of the ddos plan. | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_security\_group\_ids | n/a |
| subnet\_cidr\_list | CIDR list of the created subnets |
| subnet\_ids | IDs of the created subnets |
| subnet\_names | Names list of the created subnet |
| subnets\_cidrs\_map | Map with names and CIDRs of the created subnets |
| subnets\_ids\_map | Map with names and IDs of the created subnets |
| virtual\_network\_address\_space | Virtual network space |
| virtual\_network\_dns\_servers | Virtual network DNS Servers |
| virtual\_network\_id | Virtual network generated id |
| virtual\_network\_location | Virtual network location |
| virtual\_network\_name | Virtual network name |
| virtual\_network\_resource\_group\_name | Virtual network resource group name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Examples

Usage example is found in the `./examples/default/` folder.

## Inspec

No Inspec tests are done for this module.
