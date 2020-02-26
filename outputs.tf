output "virtual_network_id" {
  description = "Virtual network generated id"
  value = element(
    concat(
      azurerm_virtual_network.this.*.id,
      list("")
    ),
    0
  )
}

output "virtual_network_location" {
  description = "Virtual network location"
  value = element(
    concat(
      azurerm_virtual_network.this.*.location,
      list("")
    ),
    0
  )
}

output "virtual_network_name" {
  description = "Virtual network name"
  value = element(
    concat(
      azurerm_virtual_network.this.*.name,
      list("")
    ),
    0
  )
}

output "virtual_network_resource_group_name" {
  description = "Virtual network resource group name"
  value = element(
    concat(
      azurerm_virtual_network.this.*.resource_group_name,
      list("")
    ),
    0
  )
}

output "virtual_network_address_space" {
  description = "Virtual network space"
  value = element(
    concat(
      azurerm_virtual_network.this.*.address_space,
      list("")
    ),
    0
  )
}

output "virtual_network_dns_servers" {
  description = "Virtual network DNS Servers"
  value = element(
    concat(
      azurerm_virtual_network.this.*.dns_servers,
      list("")
    ),
    0
  )
}
