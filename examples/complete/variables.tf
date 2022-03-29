#alicloud_polardb_cluster
variable "db_node_class" {
  description = "The db_node_class of cluster node."
  type        = string
  default     = "polar.pg.x8.xlarge"
}

variable "polardb_cluster_description" {
  description = "The description of cluster."
  type        = string
  default     = "polardb_cluster_description"
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

variable "maintain_time" {
  description = "Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)"
  type        = string
  default     = "16:00Z-17:00Z"
}

variable "collector_status" {
  description = "Specifies whether to enable or disable SQL data collector. Valid values are Enable, Disabled."
  type        = string
  default     = "Disabled"
}

variable "security_group_ids" {
  description = "The ID of the security group."
  type        = set(string)
  default     = null
}

#alicloud_polardb_endpoint
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
  default     = "Enable"
}
variable "endpoint_config" {
  description = "The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format."
  type        = map(any)
  default     = {}
}

variable "net_type" {
  description = "The network type of the endpoint address.Valid values: Public, Private, Inner."
  type        = string
  default     = "Public"
}

#alicloud_polardb_endpoint_address
variable "connection_prefix" {
  description = "The Prefix of the specified endpoint."
  type        = string
  default     = "testpolardbconn"
}