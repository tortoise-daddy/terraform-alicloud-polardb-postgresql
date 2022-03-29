
db_node_class                 = "polar.pg.x8.xlarge"
polardb_cluster_description   = "update_polardb_cluster_description"
modify_type                   = "Upgrade"
db_node_count                 = 3
renewal_status                = "Normal"
auto_renew_period             = 2
period                        = 2
security_ips                  = []
maintain_time                 = "16:00Z-17:00Z"
collector_status              = "Enable"
encrypt_new_tables            = null
security_group_ids            = null
#alicloud_polardb_endpoint
endpoint_type                 = "Cluster"
read_write_mode               = "ReadWrite"
nodes                         = []
auto_add_new_nodes            = "Enable"
endpoint_config               = {}
net_type                      = "Private"
#alicloud_polardb_endpoint_address
connection_prefix             = "testpolardbconnprefix"
