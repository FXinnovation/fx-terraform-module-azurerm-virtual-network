#####
# Locals
#####

locals {
  subnet_names_with_route_table = [for x in var.subnets_config : "${x.name}" if lookup(x, "rt_key", "null") != "null"]
  subnet_rt_keys_with_route_table = [for x in var.subnets_config : {
    subnet_name = x.name
    rt_key      = x.rt_key
  } if lookup(x, "rt_key", "null") != "null"]
  subnets_with_route_table = zipmap(local.subnet_names_with_route_table, local.subnet_rt_keys_with_route_table)
}

#####
# Resources
#####

resource "azurerm_route_table" "this" {
  for_each                      = var.enabled ? var.route_tables_config : {}
  resource_group_name           = var.resource_group_name
  location                      = var.location
  name                          = each.value["name"]
  disable_bgp_route_propagation = lookup(each.value, "disable_bgp_route_propagation", null)

  dynamic "route" {
    for_each = each.value["routes"]
    content {
      name                   = route.value["name"]
      address_prefix         = route.value["address_prefix"]
      next_hop_type          = route.value["next_hop_type"]
      next_hop_in_ip_address = lookup(route.value, "next_hop_in_ip_address", null)
    }
  }

  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}

resource "azurerm_subnet_route_table_association" "this_association" {
  for_each = var.enabled ? local.subnets_with_route_table : {}

  lifecycle {
    ignore_changes = [route_table_id, subnet_id]
  }
  route_table_id = lookup(azurerm_route_table.this, each.value["rt_key"], null)["id"]
  subnet_id      = lookup(var.subnets_ids_map, each.value["subnet_name"], null)
}
