output "virtual_network_id" {
  description = "Virtual network generated id"
  value       = module.az_vnet_demo.virtual_network_id
}

output "virtual_network_location" {
  description = "Virtual network location"
  value       = module.az_vnet_demo.virtual_network_location
}

output "virtual_network_name" {
  description = "Virtual network name"
  value       = module.az_vnet_demo.virtual_network_name
}

output "virtual_network_resource_group_name" {
  description = "Virtual network resource group name"
  value       = module.az_vnet_demo.virtual_network_resource_group_name
}

output "virtual_network_address_space" {
  description = "Virtual network space"
  value       = module.az_vnet_demo.virtual_network_address_space
}

output "virtual_network_dns_servers" {
  description = "Virtual network DNS Servers"
  value       = module.az_vnet_demo.virtual_network_dns_servers
}

output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = module.az_vnet_demo.subnet_ids
}

output "subnet_names" {
  description = "Names list of the created subnet"
  value       = module.az_vnet_demo.subnet_names
}

output "subnets_ids_map" {
  description = "Map with names and IDs of the created subnets"
  value       = module.az_vnet_demo.subnets_ids_map
}

output "subnet_cidr_list" {
  description = "CIDR list of the created subnets"
  value       = module.az_vnet_demo.subnet_cidr_list

}

output "subnets_cidrs_map" {
  description = "Map with names and CIDRs of the created subnets"
  value       = module.az_vnet_demo.subnet_cidr_list
}

output "network_security_group_ids" {
  description = "List of IDs of the created NSG."
  value       = module.az_vnet_demo.network_security_group_ids
}

output "route_table_ids" {
  description = "List of IDs of the created route tables."
  value       = module.az_vnet_demo.route_table_ids
}
