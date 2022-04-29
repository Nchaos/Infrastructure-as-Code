#################################
# 
# Variables for Naming
#
#################################

variable "app_name" {
  description = "(Required) Used for naming convention of resources. Use names that help identify the application"
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}

#################################
# 
# Variables for Azure Kubernetes Service Cluster Node Pool
#
#################################

variable "aks_cluster_id" {
  type = string
}

variable "availability_zones" {
  type    = list(string)
  default = []
}

variable "vnet_subnet_id" {
  default = null
}

variable "machine_type" {
  type = string
}

variable "os_disk_size" {
  default = 100
}

variable "node_count" {
  default = 1
}

variable "enable_auto_scaling" {
  default = false
}

variable "max_nodes" {
  default = 1
}

variable "min_nodes" {
  default = 1
}

variable "node_taints" {
  type    = list(any)
  default = []
}

variable "node_labels" {
  type    = map(any)
  default = {}
}

variable "proximity_placement_group_id" {
  type    = string
  default = ""
}
