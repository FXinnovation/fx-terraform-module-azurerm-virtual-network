variable "enabled" {
  description = "Enable or disable module"
  default     = true
}

variable "resource_group_name" {
  description = "Resource group where the vnet resides."
  type        = string
}

variable "location" {
  description = "Location of the virtual network."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space that is used by the virtual network"
  default     = ["10.0.0.0/8"]
}

variable "vnet_dns_servers" {
  description = "List of IP addresses of DNS servers"
  default     = []
}

variable "network_ddos_protection_plan" {
  description = "Object containing bool about enabling ddos plan and ID of the ddos plan."
  default     = []
}

variable "tags" {
  description = "Tags to add to the virtual network."
  default     = {}
}

variable "subnets_config" {
  description = "Object containing deployment information for subnets."
  type        = any
}

variable "enable_nsg" {
  description = "Enable or disable NSG deployment."
  type        = bool
}

variable "network_security_groups_config" {
  description = "Object containing deployment information for network security groups."
  type        = any
}
