# Default example

This will create all the resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_id | Azure service principal application Id. | `any` | n/a | yes |
| client\_secret | Azure service principal application Secret. | `any` | n/a | yes |
| location | Location of the resources. | `string` | `"canadacentral"` | no |
| resource\_group\_name | Resource group where the vnet resides. | `string` | `"fxcozca1dgenrg001"` | no |
| subnets\_config | Object containing deployment information for subnets. | `any` | <pre>{<br>  "gatewaysubnet": {<br>    "address_prefix": "10.0.0.0/24",<br>    "name": "GatewaySubnet"<br>  },<br>  "subnet1": {<br>    "address_prefix": "10.0.1.0/24",<br>    "name": "Subnet1",<br>    "nsg_key": "nsg1",<br>    "rt_key": "rt1",<br>    "service_endpoints": [<br>      "Microsoft.Sql",<br>      "Microsoft.Storage"<br>    ]<br>  },<br>  "subnet2": {<br>    "address_prefix": "10.0.2.0/24",<br>    "name": "Subnet2",<br>    "nsg_key": "nsg1",<br>    "rt_key": "rt1",<br>    "service_endpoints": [<br>      "Microsoft.Sql"<br>    ]<br>  },<br>  "subnet3": {<br>    "address_prefix": "10.0.3.0/24",<br>    "delegation": [<br>      {<br>        "name": "acctestdelegation",<br>        "service_delegation": [<br>          {<br>            "actions": [<br>              "Microsoft.Network/virtualNetworks/subnets/action"<br>            ],<br>            "name": "Microsoft.ContainerInstance/containerGroups"<br>          }<br>        ]<br>      }<br>    ],<br>    "name": "Subnet3",<br>    "service_endpoints": [<br>      "Microsoft.Sql"<br>    ]<br>  }<br>}</pre> | no |
| subscription\_id | Azure subscription Id. | `any` | n/a | yes |
| tags | Tags to add to the virtual network. | `map` | <pre>{<br>  "FXDepartment": "Cloud",<br>  "FXOwner": "Test user",<br>  "FXProjet": "FXCO"<br>}</pre> | no |
| tenant\_id | Azure tenant Id. | `any` | n/a | yes |
| vnet\_address\_space | The address space that is used by the virtual network | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| vnet\_dns\_servers | List of IP addresses of DNS servers | `list(string)` | <pre>[<br>  "8.8.8.8",<br>  "8.8.4.4"<br>]</pre> | no |
| vnet\_name | Name of the virtual network. | `string` | `"fxcozca1dgenvn001"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
