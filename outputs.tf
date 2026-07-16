output "active_directory_domain_service_trusts_id" {
  description = "Map of id values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "active_directory_domain_service_trusts_domain_service_id" {
  description = "Map of domain_service_id values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.domain_service_id if v.domain_service_id != null && length(v.domain_service_id) > 0 }
}
output "active_directory_domain_service_trusts_name" {
  description = "Map of name values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "active_directory_domain_service_trusts_password" {
  description = "Map of password values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "active_directory_domain_service_trusts_trusted_domain_dns_ips" {
  description = "Map of trusted_domain_dns_ips values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.trusted_domain_dns_ips if v.trusted_domain_dns_ips != null && length(v.trusted_domain_dns_ips) > 0 }
}
output "active_directory_domain_service_trusts_trusted_domain_fqdn" {
  description = "Map of trusted_domain_fqdn values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.trusted_domain_fqdn if v.trusted_domain_fqdn != null && length(v.trusted_domain_fqdn) > 0 }
}

