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
| client\_id | Azure service principal application Id. | `string` | n/a | yes |
| client\_secret | Azure service principal application Secret. | `string` | n/a | yes |
| subscription\_id | Azure subscription Id. | `string` | n/a | yes |
| tenant\_id | Azure tenant Id. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| network\_security\_group\_ids | List of IDs of the created NSG. |
| route\_table\_ids | List of IDs of the created route tables. |
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
