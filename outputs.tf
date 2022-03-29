
output "cluster_id" {
  description = "The id of the polardb cluster."
  value       = local.this_db_cluster_id
}

output "cluster_connection_string" {
  description = "The PolarDB cluster connection string."
  value       = concat(alicloud_polardb_cluster.cluster.*.connection_string, [""])[0]
}

output "endpoint_id" {
  description = "The id of the polardb endpoint."
  value       = concat(alicloud_polardb_endpoint.endpoint.*.id, [""])[0]
}

output "endpoint_ssl_expire_time" {
  description = "The time when the SSL certificate expires."
  value       = concat(alicloud_polardb_endpoint.endpoint.*.ssl_expire_time, [""])[0]
}

output "endpoint_ssl_connection_string" {
  description = "The SSL connection string."
  value       = concat(alicloud_polardb_endpoint.endpoint.*.ssl_connection_string, [""])[0]
}

output "endpoint_address_id" {
  description = "The id of the polardb endpoint address."
  value       = concat(alicloud_polardb_endpoint_address.endpoint_address.*.id, [""])[0]
}

output "endpoint_address_port" {
  description = "Connection cluster or endpoint port."
  value       = concat(alicloud_polardb_endpoint_address.endpoint_address.*.port, [""])[0]
}

output "endpoint_address_connection_string" {
  description = "Connection cluster or endpoint string."
  value       = concat(alicloud_polardb_endpoint_address.endpoint_address.*.connection_string, [""])[0]
}

output "endpoint_address_ip_address" {
  description = "The ip address of connection string."
  value       = concat(alicloud_polardb_endpoint_address.endpoint_address.*.ip_address, [""])[0]
}