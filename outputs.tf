output "storagegateway_gateways_id" {
  description = "Map of id values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storagegateway_gateways_activation_key" {
  description = "Map of activation_key values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.activation_key if v.activation_key != null && length(v.activation_key) > 0 }
}
output "storagegateway_gateways_arn" {
  description = "Map of arn values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "storagegateway_gateways_average_download_rate_limit_in_bits_per_sec" {
  description = "Map of average_download_rate_limit_in_bits_per_sec values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.average_download_rate_limit_in_bits_per_sec if v.average_download_rate_limit_in_bits_per_sec != null }
}
output "storagegateway_gateways_average_upload_rate_limit_in_bits_per_sec" {
  description = "Map of average_upload_rate_limit_in_bits_per_sec values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.average_upload_rate_limit_in_bits_per_sec if v.average_upload_rate_limit_in_bits_per_sec != null }
}
output "storagegateway_gateways_cloudwatch_log_group_arn" {
  description = "Map of cloudwatch_log_group_arn values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.cloudwatch_log_group_arn if v.cloudwatch_log_group_arn != null && length(v.cloudwatch_log_group_arn) > 0 }
}
output "storagegateway_gateways_ec2_instance_id" {
  description = "Map of ec2_instance_id values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.ec2_instance_id if v.ec2_instance_id != null && length(v.ec2_instance_id) > 0 }
}
output "storagegateway_gateways_endpoint_type" {
  description = "Map of endpoint_type values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "storagegateway_gateways_gateway_id" {
  description = "Map of gateway_id values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_id if v.gateway_id != null && length(v.gateway_id) > 0 }
}
output "storagegateway_gateways_gateway_ip_address" {
  description = "Map of gateway_ip_address values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_ip_address if v.gateway_ip_address != null && length(v.gateway_ip_address) > 0 }
}
output "storagegateway_gateways_gateway_name" {
  description = "Map of gateway_name values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_name if v.gateway_name != null && length(v.gateway_name) > 0 }
}
output "storagegateway_gateways_gateway_network_interface" {
  description = "Map of gateway_network_interface values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_network_interface if v.gateway_network_interface != null && length(v.gateway_network_interface) > 0 }
}
output "storagegateway_gateways_gateway_timezone" {
  description = "Map of gateway_timezone values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_timezone if v.gateway_timezone != null && length(v.gateway_timezone) > 0 }
}
output "storagegateway_gateways_gateway_type" {
  description = "Map of gateway_type values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_type if v.gateway_type != null && length(v.gateway_type) > 0 }
}
output "storagegateway_gateways_gateway_vpc_endpoint" {
  description = "Map of gateway_vpc_endpoint values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.gateway_vpc_endpoint if v.gateway_vpc_endpoint != null && length(v.gateway_vpc_endpoint) > 0 }
}
output "storagegateway_gateways_host_environment" {
  description = "Map of host_environment values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.host_environment if v.host_environment != null && length(v.host_environment) > 0 }
}
output "storagegateway_gateways_maintenance_start_time" {
  description = "Map of maintenance_start_time values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => one(v.maintenance_start_time) if v.maintenance_start_time != null && length(v.maintenance_start_time) > 0 }
}
output "storagegateway_gateways_medium_changer_type" {
  description = "Map of medium_changer_type values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.medium_changer_type if v.medium_changer_type != null && length(v.medium_changer_type) > 0 }
}
output "storagegateway_gateways_region" {
  description = "Map of region values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.region if v.region != null && length(v.region) > 0 }
}
output "storagegateway_gateways_smb_active_directory_settings" {
  description = "Map of smb_active_directory_settings values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => one(v.smb_active_directory_settings) if v.smb_active_directory_settings != null && length(v.smb_active_directory_settings) > 0 }
  sensitive   = true
}
output "storagegateway_gateways_smb_file_share_visibility" {
  description = "Map of smb_file_share_visibility values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.smb_file_share_visibility if v.smb_file_share_visibility != null }
}
output "storagegateway_gateways_smb_guest_password" {
  description = "Map of smb_guest_password values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.smb_guest_password if v.smb_guest_password != null && length(v.smb_guest_password) > 0 }
  sensitive   = true
}
output "storagegateway_gateways_smb_security_strategy" {
  description = "Map of smb_security_strategy values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.smb_security_strategy if v.smb_security_strategy != null && length(v.smb_security_strategy) > 0 }
}
output "storagegateway_gateways_tags" {
  description = "Map of tags values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "storagegateway_gateways_tags_all" {
  description = "Map of tags_all values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "storagegateway_gateways_tape_drive_type" {
  description = "Map of tape_drive_type values across all storagegateway_gateways, keyed the same as var.storagegateway_gateways"
  value       = { for k, v in aws_storagegateway_gateway.storagegateway_gateways : k => v.tape_drive_type if v.tape_drive_type != null && length(v.tape_drive_type) > 0 }
}

