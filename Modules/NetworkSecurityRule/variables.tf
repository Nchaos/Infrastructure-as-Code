#################################
# 
# Variables for Network Security Rule
#
#################################

variable "resource_group_name" {
  type = string
}

variable "network_security_rules" {
  type = map(object({
    access                                     = string
    description                                = string
    destination_address_prefix                 = string
    destination_address_prefixes               = set(string)
    destination_application_security_group_ids = set(string)
    destination_port_range                     = string
    destination_port_ranges                    = set(string)
    direction                                  = string
    name                                       = string
    network_security_group_name                = string
    priority                                   = number
    protocol                                   = string
    source_address_prefix                      = string
    source_address_prefixes                    = set(string)
    source_application_security_group_ids      = set(string)
    source_port_range                          = string
    source_port_ranges                         = set(string)
  }))
  default = {}
}

variable "timeouts" {
  description = "nested block: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
  }))
  default = []
}