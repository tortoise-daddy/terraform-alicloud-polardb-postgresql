#alicloud_polardb_cluster
variable "create_cluster" {
  description = "Controls if polardb cluster should be created"
  type        = bool
  default     = false
}

variable "db_cluster_id" {
  description = "The Id of cluster that can run database.It will be ignored when create_cluster = true"
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The virtual switch ID to launch DB instances in one VPC."
  type        = string
  default     = ""
}

variable "zone_id" {
  description = "The Zone to launch the DB cluster. it supports multiple zone."
  type        = string
  default     = ""
}

variable "pay_type" {
  description = "The specification of the pay type."
  type        = string
  default     = "PostPaid"
}

variable "db_node_class" {
  description = "The db_node_class of cluster node."
  type        = string
  default     = "polar.pg.x8.xlarge"
}

variable "polardb_cluster_description" {
  description = "The description of cluster."
  type        = string
  default     = ""
}

variable "modify_type" {
  description = "Use as db_node_class change class, define upgrade or downgrade. Valid values are Upgrade, Downgrade, Default to Upgrade."
  type        = string
  default     = "Upgrade"
}

variable "db_node_count" {
  description = "Number of the PolarDB cluster nodes, default is 2(Each cluster must contain at least a primary node and a read-only node). Add/remove nodes by modifying this parameter, valid values: [2~16]."
  type        = number
  default     = 2
}

variable "renewal_status" {
  description = "Valid values are AutoRenewal, Normal, NotRenewal, Default to NotRenewal."
  type        = string
  default     = "NotRenewal"
}

variable "auto_renew_period" {
  description = "Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is PrePaid. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1."
  type        = number
  default     = 1
}

variable "period" {
  description = "The duration that you will buy DB cluster (in month). It is valid when pay_type is PrePaid. Valid values: [1~9], 12, 24, 36."
  type        = number
  default     = 1
}

variable "security_ips" {
  description = "List of IP addresses allowed to access all databases of an cluster."
  type        = set(string)
  default     = null
}

variable "resource_group_id" {
  description = "The ID of resource group which the PolarDB cluster belongs. If not specified, then it belongs to the default resource group."
  type        = string
  default     = null
}

variable "maintain_time" {
  description = "Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)"
  type        = string
  default     = null
}

variable "collector_status" {
  description = "Specifies whether to enable or disable SQL data collector. Valid values are Enable, Disabled."
  type        = string
  default     = "Disabled"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "tde_status" {
  description = "The turn on TDE encryption. Valid values are Enabled, Disabled. "
  type        = string
  default     = "Disabled"
}

variable "security_group_ids" {
  description = "The ID of the security group."
  type        = set(string)
  default     = null
}

#alicloud_polardb_endpoint
variable "create_endpoint" {
  description = "Controls if endpoint should be created"
  type        = bool
  default     = false
}

variable "endpoint_type" {
  description = "Type of the endpoint. Custom, Cluster, Primary are valid, default to Custom. However when creating a new endpoint, it also only can be Custom."
  type        = string
  default     = "Custom"
}

variable "read_write_mode" {
  description = "Read or write mode. Valid values are ReadWrite, ReadOnly. When creating a new custom endpoint, default to ReadOnly."
  type        = string
  default     = "ReadOnly"
}

variable "nodes" {
  description = "Node id list for endpoint configuration. Default is all nodes."
  type        = set(string)
  default     = null
}

variable "auto_add_new_nodes" {
  description = "Whether the new node automatically joins the default cluster address. Valid values are Enable, Disable. When creating a new custom endpoint, default to Disable."
  type        = string
  default     = "Disable"
}

variable "endpoint_config" {
  description = "The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format."
  type        = map(any)
  default     = {}
}

variable "ssl_enabled" {
  description = "Specifies how to modify the SSL encryption status. Valid values: Disable, Enable, Update."
  type        = string
  default     = "Enable"
}

variable "net_type" {
  description = "The network type of the endpoint address.Valid values: Public, Private, Inner."
  type        = string
  default     = "Public"
}

variable "ssl_auto_rotate" {
  description = "Specifies whether automatic rotation of SSL certificates is enabled. Valid values: Enable,Disable."
  type        = string
  default     = "Disable"
}

#alicloud_polardb_endpoint_address
variable "create_endpoint_address" {
  description = "Controls if endpoint address should be created"
  type        = bool
  default     = false
}

variable "connection_prefix" {
  description = "The Prefix of the specified endpoint."
  type        = string
  default     = ""
}
