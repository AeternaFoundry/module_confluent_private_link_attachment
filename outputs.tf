output "private_link_attachments_id" {
  description = "Map of id values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no id are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "private_link_attachments_aws" {
  description = "Map of aws values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no aws are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.aws if v.aws != null && length(v.aws) > 0 }
}
output "private_link_attachments_azure" {
  description = "Map of azure values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no azure are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.azure if v.azure != null && length(v.azure) > 0 }
}
output "private_link_attachments_cloud" {
  description = "Map of cloud values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no cloud are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "private_link_attachments_display_name" {
  description = "Map of display_name values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no display_name are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "private_link_attachments_dns_domain" {
  description = "Map of dns_domain values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no dns_domain are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.dns_domain if v.dns_domain != null && length(v.dns_domain) > 0 }
}
output "private_link_attachments_environment" {
  description = "Map of environment values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no environment are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "private_link_attachments_gcp" {
  description = "Map of gcp values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no gcp are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}
output "private_link_attachments_region" {
  description = "Map of region values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no region are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "private_link_attachments_resource_name" {
  description = "Map of resource_name values across all private_link_attachments, keyed the same as var.private_link_attachments except keys with no resource_name are omitted"
  value       = { for k, v in confluent_private_link_attachment.private_link_attachments : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}

