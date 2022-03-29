module "default" {
  source = "../.."
  
  #alicloud_polardb_cluster
  create_cluster                = true
  pay_type                      = "PostPaid"
  db_node_class                 = var.db_node_class
  polardb_cluster_description   = var.polardb_cluster_description
  modify_type                   = var.modify_type
  db_node_count                 = var.db_node_count
  renewal_status                = var.renewal_status
  auto_renew_period             = var.auto_renew_period
  period                        = var.period
  security_ips                  = var.security_ips
  maintain_time                 = var.maintain_time
  collector_status              = var.collector_status
  tde_status                    = "Disabled"
  security_group_ids            = var.security_group_ids
  tags  = {
        Created = "TF"
  }
  #alicloud_polardb_endpoint
  create_endpoint               = true
  endpoint_type                 = var.endpoint_type 
  read_write_mode               = var.read_write_mode
  nodes                         = var.nodes
  auto_add_new_nodes            = var.auto_add_new_nodes
  endpoint_config               = var.endpoint_config
  ssl_enabled                   = "Enable"
  net_type                      = var.net_type
  ssl_auto_rotate               = "Disable"
  #alicloud_polardb_endpoint_address
  create_endpoint_address       = true
  connection_prefix             = var.connection_prefix 
}