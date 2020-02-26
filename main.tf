#####
# Resources
#####

resource "azurerm_virtual_network" "this" {
  count               = var.enabled ? 1 : 0
  resource_group_name = var.resource_group_name
  location            = var.location
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  dns_servers         = var.virtual_network_dns_servers

  dynamic "ddos_protection_plan" {
    for_each = var.virtual_network_network_ddos_protection_plan
    content {
      id     = lookup(ddos_protection_plan.value, "id", null)
      enable = lookup(ddos_protection_plan.value, "enable", false)
    }
  }

  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}

module "subnets" {
  source               = "./modules/subnets/"
  enabled              = var.enabled
  resource_group_name  = azurerm_virtual_network.this[0].resource_group_name
  virtual_network_name = azurerm_virtual_network.this[0].name
  subnets_config       = var.subnets_config
}

module "network_security_groups" {
  source                         = "./modules/network-security-groups/"
  enabled                        = var.enable_nsg
  resource_group_name            = azurerm_virtual_network.this[0].resource_group_name
  location                       = var.location
  subnets_config                 = var.subnets_config
  subnets_ids_map                = module.subnets.subnets_ids_map
  network_security_groups_config = var.network_security_groups_config
  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}
