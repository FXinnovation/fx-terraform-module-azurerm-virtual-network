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

output "subnet_ids" {
  description = "IDs of the created subnets"
  value = element(
    concat(
      module.subnets.subnet_ids,
      list("")
    ),
    0
  )
}

output "subnet_names" {
  description = "Names list of the created subnet"
  value = element(
    concat(
      module.subnets.subnet_names,
      list("")
    ),
    0
  )
}

output "subnets_ids_map" {
  description = "Map with names and IDs of the created subnets"
  value       = module.subnets.subnets_ids_map
}

output "subnet_cidr_list" {
  description = "CIDR list of the created subnets"
  value = element(
    concat(
      module.subnets.subnet_cidr_list,
      list("")
    ),
    0
  )
}

output "subnets_cidrs_map" {
  description = "Map with names and CIDRs of the created subnets"
  value       = module.subnets.subnets_cidrs_map
}

output "network_security_group_ids" {
  value = element(
    concat(
      module.network_security_groups.network_security_group_ids,
      list("")
    ),
    0
  )
}

# Could use output for NSG-subnet association
