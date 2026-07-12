output "active_directory_domain_service_trusts_id" {
  description = "Map of id values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.id }
}
output "active_directory_domain_service_trusts_domain_service_id" {
  description = "Map of domain_service_id values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.domain_service_id }
}
output "active_directory_domain_service_trusts_name" {
  description = "Map of name values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.name }
}
output "active_directory_domain_service_trusts_password" {
  description = "Map of password values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.password }
  sensitive   = true
}
output "active_directory_domain_service_trusts_trusted_domain_dns_ips" {
  description = "Map of trusted_domain_dns_ips values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.trusted_domain_dns_ips }
}
output "active_directory_domain_service_trusts_trusted_domain_fqdn" {
  description = "Map of trusted_domain_fqdn values across all active_directory_domain_service_trusts, keyed the same as var.active_directory_domain_service_trusts"
  value       = { for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : k => v.trusted_domain_fqdn }
}

