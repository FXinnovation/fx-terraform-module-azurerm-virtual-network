#####
# Locals
#####

locals {
  subnet_names_network_security_group = [for x in var.subnets_config : "${x.name}" if lookup(x, "nsg_key", "null") != "null"]
  subnet_nsg_keys_network_security_group = [for x in var.subnets_config : {
    subnet_name = x.name
    nsg_key     = x.nsg_key
  } if lookup(x, "nsg_key", "null") != "null"]
  subnets_network_security_group = zipmap(local.subnet_names_network_security_group, local.subnet_nsg_keys_network_security_group)
}

#####
# Resources
#####

resource "azurerm_network_security_group" "this" {
  for_each            = var.enabled ? var.network_security_groups_config : {}
  resource_group_name = var.resource_group_name
  location            = var.location
  name                = each.value["name"]

  dynamic "security_rule" {
    for_each = each.value["security_rules"]
    content {
      description                  = lookup(security_rule.value, "description", null)
      direction                    = lookup(security_rule.value, "direction", null)
      name                         = lookup(security_rule.value, "name", null)
      access                       = lookup(security_rule.value, "access", null)
      priority                     = lookup(security_rule.value, "priority", null)
      source_address_prefix        = lookup(security_rule.value, "source_address_prefix", null)
      source_address_prefixes      = lookup(security_rule.value, "source_address_prefixes", null)
      destination_address_prefix   = lookup(security_rule.value, "destination_address_prefix", null)
      destination_address_prefixes = lookup(security_rule.value, "destination_address_prefixes", null)
      destination_port_range       = lookup(security_rule.value, "destination_port_range", null)
      destination_port_ranges      = lookup(security_rule.value, "destination_port_ranges", null)
      protocol                     = lookup(security_rule.value, "protocol", null)
      source_port_range            = lookup(security_rule.value, "source_port_range", null)
      source_port_ranges           = lookup(security_rule.value, "source_port_ranges", null)
    }
  }
  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}

resource "azurerm_subnet_network_security_group_association" "this_association" {
  for_each = var.enabled ? local.subnets_network_security_group : {}

  lifecycle {
    ignore_changes = [network_security_group_id, subnet_id]
  }

  network_security_group_id = lookup(azurerm_network_security_group.this, each.value["nsg_key"], null)["id"]
  subnet_id                 = lookup(var.subnets_ids_map, each.value["subnet_name"], null)
}
