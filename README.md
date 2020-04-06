# terraform-module-azurerm-virtual-network

## Usage

This module is used to deploy a single virtual network.

This virtual network supports custom address spaces, custom DNS servers and being linked to a standard SKU DDoS protection plan (Note that you have a limit of one plan per region (Azure limitation)).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| azurerm | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enable\_nsg | Enable or disable NSG deployment. | `bool` | `false` | no |
| enable\_rt | Enable or disable route table deployment. | `bool` | `false` | no |
| enabled | Enable or disable module | `bool` | `true` | no |
| location | Location of the virtual network. | `string` | n/a | yes |
| network\_security\_groups\_config | Required with enable\_nsg to true .Object containing deployment information for network security groups. | `any` | `{}` | no |
| resource\_group\_name | Resource group where the vnet resides. | `string` | n/a | yes |
| route\_tables\_config | Required with enable\_rt to true . Object containing deployment information for route tables. | `any` | `{}` | no |
| subnets\_config | Required if you want to deploy a virtual network. Object containing deployment information for subnets. | `any` | <pre>{<br>  "defaultsn": {<br>    "address_prefix": "10.0.1.0/24",<br>    "name": "defaultsn"<br>  }<br>}</pre> | no |
| tags | Tags to add to the virtual network. | `map` | `{}` | no |
| virtual\_network\_address\_space | Required if you want to deploy a virtual network. The address space that is used by the virtual network | `list(string)` | <pre>[<br>  "10.0.0.0/8"<br>]</pre> | no |
| virtual\_network\_dns\_servers | Required for custom DNS servers. List of IP addresses of DNS servers. If default value not modified, uses default Azure DNS. | `list` | `[]` | no |
| virtual\_network\_name | Required if you want to deploy a virtual network. Name of the virtual network. | `string` | `"default"` | no |
| virtual\_network\_network\_ddos\_protection\_plan | Object containing bool about enabling ddos plan and ID of the ddos plan. | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_security\_group\_ids | n/a |
| route\_table\_ids | n/a |
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
