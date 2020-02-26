variable "tenant_id" {
  description = "Azure tenant Id."
}

variable "subscription_id" {
  description = "Azure subscription Id."
}

variable "client_id" {
  description = "Azure service principal application Id."
}

variable "client_secret" {
  description = "Azure service principal application Secret."
}

variable "resource_group_name" {
  description = "Resource group where the vnet resides."
  type        = string
}

variable "location" {
  description = "Location of the resources."
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "virtual_network_address_space" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
}

variable "virtual_network_dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list(string)
}

variable "tags" {
  description = "Tags to add to the virtual network-related resources."
  type        = map
}

variable "subnets_config" {
  description = "Object containing deployment information for subnets."
  type        = any
}

variable "network_security_groups_config" {
  description = "Object containing deployment information for network security groups."
  type        = any
}

# variable "route_tables_config" {
#   description = "Object containing deployment information for route tables."
#   type        = any
# }
