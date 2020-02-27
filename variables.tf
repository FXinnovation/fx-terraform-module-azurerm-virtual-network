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

variable "virtual_network_name" {
  description = "Required if you want to deploy a virtual network. Name of the virtual network."
  type        = string
  default     = "default"
}

variable "virtual_network_address_space" {
  description = "Required if you want to deploy a virtual network. The address space that is used by the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

variable "virtual_network_dns_servers" {
  description = "Required for custom DNS servers. List of IP addresses of DNS servers. If default value not modified, uses default Azure DNS."
  default     = []
}

variable "virtual_network_network_ddos_protection_plan" {
  description = "Object containing bool about enabling ddos plan and ID of the ddos plan."
  default     = []
}

variable "tags" {
  description = "Tags to add to the virtual network."
  default     = {}
}

variable "subnets_config" {
  description = "Required if you want to deploy a virtual network. Object containing deployment information for subnets."
  type        = any
  default = {
    defaultsn = {
      name           = "defaultsn"
      address_prefix = "10.0.1.0/24"
    },
  }
}

variable "enable_nsg" {
  description = "Enable or disable NSG deployment."
  type        = bool
  default     = false
}

variable "network_security_groups_config" {
  description = "Required with enable_nsg to true .Object containing deployment information for network security groups."
  type        = any
  default     = {}
}

variable "enable_rt" {
  description = "Enable or disable route table deployment."
  type        = bool
  default     = false
}

variable "route_tables_config" {
  description = "Required with enable_rt to true . Object containing deployment information for route tables."
  type        = any
  default     = {}
}
