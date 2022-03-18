######
# Locals
######

locals {
  tags = {
    FXOwner      = "Test user - Terraform"
    FXProjet     = "FXCO"
    FXDepartment = "CloudCICD"
  }
  location = "canadacentral"
}

######
# Resources
######

resource "random_string" "this" {
  length  = 3
  upper   = false
  special = false
}

module "az_rg_demo" {
  source   = "git::https://github.com/FXinnovation/fx-terraform-module-azurerm-resource-group.git?ref=0.2.0"
  location = local.location
  name     = "fxcozca1dgenrg${random_string.this.result}"
  tags     = local.tags
}

module "az_vnet_demo" {
  source              = "../../"
  enabled             = false
  resource_group_name = module.az_rg_demo.name
  location            = local.location
  subnets_config      = {}
}
