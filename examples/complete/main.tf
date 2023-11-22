module "default" {
  source = "../.."

  #alicloud_polardb_cluster
  create_cluster              = true
  db_version                  = "14"
  pay_type                    = "PostPaid"
  db_node_class               = var.db_node_class
  polardb_cluster_description = var.polardb_cluster_description
  modify_type                 = var.modify_type
  db_node_count               = var.db_node_count
  renewal_status              = var.renewal_status
  auto_renew_period           = var.auto_renew_period
  period                      = var.period
  security_ips                = var.security_ips
  maintain_time               = var.maintain_time
  collector_status            = var.collector_status
  tde_status                  = "Disabled"
  security_group_ids          = var.security_group_ids
  deletion_lock               = var.deletion_lock
  tags = {
    Created = "TF"
  }
  parameters = var.parameters
  #alicloud_polardb_endpoint
  create_endpoint    = true
  endpoint_type      = var.endpoint_type
  read_write_mode    = var.read_write_mode
  nodes              = var.nodes
  auto_add_new_nodes = var.auto_add_new_nodes
  endpoint_config    = var.endpoint_config
  ssl_enabled        = "Enable"
  net_type           = var.net_type
  ssl_auto_rotate    = "Disable"
  #alicloud_polardb_endpoint_address
  create_endpoint_address = true
  connection_prefix       = var.connection_prefix
  #alicloud_polardb_account
  create_account         = true
  account_name           = "tf_test123"
  account_password       = var.account_password
  account_description    = var.account_description
  kms_encrypted_password = var.kms_encrypted_password
  kms_encryption_context = var.kms_encryption_context
  account_type           = "Normal"
  #alicloud_polardb_backup_policy
  create_backup_policy                = true
  preferred_backup_period             = var.preferred_backup_period
  preferred_backup_time               = var.preferred_backup_time
  data_level1_backup_retention_period = var.data_level1_backup_retention_period
  data_level2_backup_retention_period = var.data_level2_backup_retention_period
  data_level2_backup_period           = var.data_level2_backup_period
}