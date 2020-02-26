module "az_rg_demo" {
  source   = "git::ssh://git@scm.dazzlingwrench.fxinnovation.com:2222/fxinnovation-public/terraform-module-azurerm-resource-group.git?ref=0.2.0"
  location = var.location
  name     = var.resource_group_name
  tags     = var.tags
}

module "az_vnet_demo" {
  source              = "../../"
  resource_group_name = module.az_rg_demo.name
  location            = var.location
  tags                = var.tags

  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space
  vnet_dns_servers   = var.vnet_dns_servers
  subnets_config     = var.subnets_config

  enable_nsg                     = true
  network_security_groups_config = var.network_security_groups_config

  #enable_rt           = true
  #route_tables_config = var.route_tables_config
}
