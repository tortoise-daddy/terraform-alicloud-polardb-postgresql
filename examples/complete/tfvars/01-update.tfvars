
db_node_class               = "polar.pg.x8.xlarge"
polardb_cluster_description = "update_polardb_cluster_description"
modify_type                 = "Upgrade"
db_node_count               = 3
renewal_status              = "Normal"
auto_renew_period           = 2
period                      = 2
security_ips                = []
maintain_time               = "16:00Z-17:00Z"
collector_status            = "Enable"
deletion_lock               = 1
parameters = [
  {
    name  = "autovacuum_vacuum_cost_limit"
    value = "9999"
  }
]
#alicloud_polardb_endpoint
endpoint_type      = "Custom"
read_write_mode    = "ReadWrite"
nodes              = []
auto_add_new_nodes = "Enable"
endpoint_config    = {}
net_type           = "Private"
#alicloud_polardb_endpoint_address
connection_prefix = "testpolardbconnprefix"
#alicloud_polardb_account
account_password       = "tf_test123456"
account_description    = "update_tf_account_description"
kms_encrypted_password = ""
kms_encryption_context = {}
#alicloud_polardb_backup_policy
preferred_backup_period             = ["Tuesday", "Saturday"]
preferred_backup_time               = "02:00Z-03:00Z"
data_level1_backup_retention_period = 10
data_level2_backup_retention_period = 40
data_level2_backup_period           = ["Tuesday", "Saturday"]

