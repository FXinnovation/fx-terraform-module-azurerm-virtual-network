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
| resource\_group\_name | Resource group where the vnet resides. | `string` | n/a | yes |
| subscription\_id | Azure subscription Id. | `any` | n/a | yes |
| tenant\_id | Azure tenant Id. | `any` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
