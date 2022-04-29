#################################
# 
# Variables for Naming
#
#################################

variable "location" {
  description = "(Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created."
  type        = string
}

variable "environment" {
  description = "(Required) Used for naming convention of resources. Use applicable names such as dev,prod,uat,etc."
  type        = string
}

variable "app_name" {
  description = "(Required) Used for naming convention of resources. Use names that help identify the application"
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "resource_group_name" {
  type    = string
  default = ""
}

#################################
# 
# Variables for Virtual Network
#
#################################

variable "address_space" {
  description = "(required)"
  type        = list(string)
}

variable "bgp_community" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "dns_servers" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "subnet" {
  description = "(optional)"
  type = set(object(
    {
      address_prefix = string
      name           = string
      security_group = string
      id             = string
    }
  ))
  default = null
}

variable "ddos_protection_plan" {
  description = "nested block: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable = bool
      id     = string
    }
  ))
  default = []
}

#################################
# 
# Variables for Azure Kubernetes Service Cluster
#
#################################

variable "api_server_authorized_ip_ranges" {
  description = " (Optional) The IP ranges to allow for incoming traffic to the server nodes."
  type        = set(string)
  default     = null
}

#variable "automatic_channel_upgrade" {
#  description = " (Optional) The upgrade channel for this Kubernetes Cluster. Possible values are patch, rapid, node-image and stable"
#  type        = string
#  default     = null
#}

variable "disk_encryption_set_id" {
  description = "(Optional) The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information can be found in the documentation."
  type        = string
  default     = null
}

variable "dns_prefix" {
  description = "(Optional) DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created."
  type        = string
}

variable "enable_pod_security_policy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "kubernetes_version" {
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)."
  type        = string
  default     = null
}

variable "node_resource_group" {
  description = "(Optional) The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "private_cluster_enabled" {
  description = "(Optional) Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}

variable "private_dns_zone_id" {
  description = "(Optional) Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None. In case of None you will need to bring your own DNS server and set up resolving, otherwise cluster will have issues after provisioning."
  type        = string
  default     = null
}

variable "private_link_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "sku_tier" {
  description = "(Optional) The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free."
  type        = string
  default     = null
}

#################################
# 
# Variables for Azure Kubernetes Service Cluster Add-On Profiles
#
#################################

variable "aci_connector_linux_enabled" {
  description = "(Required) Is the virtual node addon enabled?"
  type        = bool
  default     = false
}

variable "azure_policy_enabled" {
  description = "(Required) Is the virtual node addon enabled?"
  type        = bool
  default     = false
}

variable "http_application_routing_enabled" {
  description = "(Required) Is the virtual node addon enabled?"
  type        = bool
  default     = false
}

variable "kube_dashboard_enabled" {
  description = "(Required) Is the virtual node addon enabled?"
  type        = bool
  default     = false
}

variable "oms_agent_enabled" {
  description = "(Required) Is the virtual node addon enabled?"
  type        = bool
  default     = false
}

#################################
# 
# Variables for Azure Kubernetes Service Auto Scaler Profile
#
#################################

variable "auto_scaler_profile" {
  description = "nested block: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      # Detect similar node groups and balance the number of nodes between them. Defaults to false.
      balance_similar_node_groups = bool
      # Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. Defaults to 600.
      max_graceful_termination_sec = string
      # For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. Defaults to 10s.
      new_pod_scale_up_delay = string
      # How long after the scale up of AKS nodes the scale down evaluation resumes. Defaults to 10m.
      scale_down_delay_after_add = string
      # How long after node deletion that scale down evaluation resumes. Defaults to the value used for scan_interval.
      scale_down_delay_after_delete = string
      # How long after scale down failure that scale down evaluation resumes. Defaults to 3m.
      scale_down_delay_after_failure = string
      # How long a node should be unneeded before it is eligible for scale down. Defaults to 10m.
      scale_down_unneeded = string
      # How long an unready node should be unneeded before it is eligible for scale down. Defaults to 20m.
      scale_down_unready = string
      # Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. Defaults to 0.5.
      scale_down_utilization_threshold = string
      # How often the AKS Cluster should be re-evaluated for scale up/down. Defaults to 10s
      scan_interval = string
      # If true cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath. Defaults to true.
      skip_nodes_with_local_storage = bool
      #  If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Defaults to true.
      skip_nodes_with_system_pods = bool
    }
  ))
  default = [{
    balance_similar_node_groups      = false
    max_graceful_termination_sec     = 600
    new_pod_scale_up_delay           = "10s"
    scale_down_delay_after_add       = "10m"
    scale_down_delay_after_delete    = "10s"
    scale_down_delay_after_failure   = "3m"
    scale_down_unneeded              = "10m"
    scale_down_unready               = "20m"
    scale_down_utilization_threshold = 0.5
    scan_interval                    = "10s"
    skip_nodes_with_local_storage    = true
    skip_nodes_with_system_pods      = true
  }]
}

#################################
# 
# Variables for Azure Kubernetes Service Default Node Pool
#
#################################
variable "dnp_availability_zones" {
  description = "(Optional) A list of Availability Zones across which the Node Pool should be spread. Changing this forces a new resource to be created."
  type        = list(string)
  default     = []
}

variable "dnp_enable_auto_scaling" {
  description = "If enable_auto_scaling is set to true, then the following fields can also be configured: max_count, min_count, and node_count"
  type        = bool
  default     = true
}

variable "dnp_enable_host_encryption" {
  description = "(Optional) Should the nodes in the Default Node Pool have host encryption enabled? Defaults to false"
  type        = bool
  default     = false
}

variable "dnp_max_count" {
  description = "(Required) If enable_auto_scaling is set to true. The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
  default     = 5
}

variable "dnp_max_pods" {
  description = "(Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  type        = number
  default     = 30
}

variable "dnp_min_count" {
  description = "(Required) If enable_auto_scaling is set to true. The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
  default     = 1
}

variable "dnp_name" {
  description = "(Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
  type        = string
}

variable "dnp_node_count" {
  description = "(Optional) If enable_auto_scaling is set to true. The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min_count and max_count. (Required) If enable_auto_scaling is set to false. The number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  type        = number
  default     = 1
}

variable "dnp_node_labels" {
  description = "(Optional) A map of Kubernetes labels which should be applied to nodes in the Default Node Pool. Changing this forces a new resource to be created."
  type        = map(string)
  default     = {}
}

variable "dnp_orchestrator_version" {
  description = "(Optional) Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)"
  type        = string
  default     = null
}

variable "dnp_os_disk_size_gb" {
  description = "(Optional) The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created."
  type        = number
  default     = 50
}

variable "dnp_os_disk_type" {
  description = "(Optional) The type of disk which should be used for the Operating System. Possible values are Ephemeral and Managed. Defaults to Managed. Changing this forces a new resource to be created."
  type        = string
  default     = "Managed"
}

variable "dnp_type" {
  description = "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets."
  type        = string
  default     = "VirtualMachineScaleSets"
}

variable "dnp_vm_size" {
  description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2"
  type        = string
  default     = "Standard_D2_v2"
}

variable "dnp_vnet_subnet_id" {
  description = "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

#################################
# 
# Variables for Azure Kubernetes Service Identity
#
#################################

variable "identity" {
  description = "nested block: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      type                      = string
      user_assigned_identity_id = string
    }
  ))
  default = [{
    type                      = "SystemAssigned"
    user_assigned_identity_id = null
  }]
}

#################################
# 
# Variables for Azure Kubernetes Service Network Profile
#
#################################

variable "dns_service_ip" {
  description = "(Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "docker_bridge_cidr" {
  description = "(Optional) IP address (in CIDR notation) used as the Docker bridge IP address on nodes. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "load_balancer_sku" {
  description = "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "network_mode" {
  description = "(Optional) Network mode to be used with Azure CNI. Possible values are bridge and transparent. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "network_plugin" {
  description = "(Required) Network plugin to use for networking. Currently supported values are azure and kubenet. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "network_policy" {
  description = "(Optional) Sets up network policy to be used with Azure CNI. Network policy allows us to control the traffic flow between pods. Currently supported values are calico and azure. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "outbound_type" {
  description = "(Optional) The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer and userDefinedRouting. Defaults to loadBalancer."
  type        = string
  default     = null
}

variable "pod_cidr" {
  description = "(Optional) The CIDR to use for pod IP addresses. This field can only be set when network_plugin is set to kubenet. Changing this forces a new resource to be created"
  type        = string
  default     = null
}

variable "service_cidr" {
  description = "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

# variable "role_based_access_control" {
#   description = "nested block: NestingList, min items: 0, max items: 1"
#   type = set(object(
#     {
#       azure_active_directory = list(object(
#         {
#           admin_group_object_ids = set(string)
#           client_app_id          = string
#           managed                = bool
#           server_app_id          = string
#           server_app_secret      = string
#           tenant_id              = string
#         }
#       ))
#       enabled = bool
#     }
#   ))
#   default = []
# }