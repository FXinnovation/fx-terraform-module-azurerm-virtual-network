# Default example

This will create all the resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_id | Azure service principal application Id. | `any` | n/a | yes |
| client\_secret | Azure service principal application Secret. | `any` | n/a | yes |
| location | Location of the resources. | `string` | n/a | yes |
| network\_security\_groups\_config | Object containing deployment information for network security groups. | `any` | n/a | yes |
| resource\_group\_name | Resource group where the vnet resides. | `string` | n/a | yes |
| subnets\_config | Object containing deployment information for subnets. | `any` | n/a | yes |
| subscription\_id | Azure subscription Id. | `any` | n/a | yes |
| tags | Tags to add to the virtual network-related resources. | `map` | n/a | yes |
| tenant\_id | Azure tenant Id. | `any` | n/a | yes |
| virtual\_network\_address\_space | The address space that is used by the virtual network | `list(string)` | n/a | yes |
| virtual\_network\_dns\_servers | List of IP addresses of DNS servers | `list(string)` | n/a | yes |
| virtual\_network\_name | Name of the virtual network. | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
