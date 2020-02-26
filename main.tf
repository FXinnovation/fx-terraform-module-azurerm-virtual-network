#####
# Resources
#####

resource "azurerm_virtual_network" "this" {
  count               = var.enabled ? 1 : 0
  resource_group_name = var.resource_group_name
  location            = var.location
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers

  dynamic "ddos_protection_plan" {
    for_each = var.network_ddos_protection_plan
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
  source               = "./modules/subnets"
  enabled              = var.enabled
  resource_group_name  = azurerm_virtual_network.this[0].resource_group_name
  virtual_network_name = azurerm_virtual_network.this[0].name
  subnets_config       = var.subnets_config
}
