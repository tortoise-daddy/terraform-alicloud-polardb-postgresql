
resource "alicloud_polardb_cluster" "cluster" {
  count              = var.create_cluster ? 1 : 0
  db_type            = "PostgreSQL"
  vswitch_id         = var.vswitch_id
  zone_id            = var.zone_id
  db_version         = "11"
  pay_type           = var.pay_type
  db_node_class      = var.db_node_class
  description        = var.polardb_cluster_description
  modify_type        = var.modify_type
  db_node_count      = var.db_node_count
  renewal_status     = var.renewal_status
  auto_renew_period  = var.auto_renew_period
  period             = var.period
  security_ips       = var.security_ips
  resource_group_id  = var.resource_group_id
  maintain_time      = var.maintain_time
  collector_status   = var.collector_status
  tde_status         = var.tde_status
  security_group_ids = var.security_group_ids
  tags               = var.tags
}

resource "alicloud_polardb_endpoint" "endpoint" {
  count               = var.create_endpoint ? 1 : 0
  db_cluster_id       = local.this_db_cluster_id
  endpoint_type       = var.endpoint_type
  read_write_mode     = var.read_write_mode
  nodes               = var.nodes
  auto_add_new_nodes  = var.auto_add_new_nodes
  endpoint_config     = var.endpoint_config
  ssl_enabled         = var.ssl_enabled
  net_type            = var.net_type
  ssl_auto_rotate     = var.ssl_auto_rotate
}

resource "alicloud_polardb_endpoint_address" "endpoint_address" {
  count             = var.create_endpoint_address ? 1 : 0
  db_cluster_id     = local.this_db_cluster_id
  db_endpoint_id    = concat(alicloud_polardb_endpoint.endpoint.*.db_endpoint_id, [""])[0]
  connection_prefix = var.connection_prefix
  net_type          = "Public"
}
