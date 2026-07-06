output "active_directory_domain_service_trusts" {
  description = "All active_directory_domain_service_trust resources"
  value       = azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts
  sensitive   = true
}
output "active_directory_domain_service_trusts_domain_service_id" {
  description = "List of domain_service_id values across all active_directory_domain_service_trusts"
  value       = [for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : v.domain_service_id]
}
output "active_directory_domain_service_trusts_name" {
  description = "List of name values across all active_directory_domain_service_trusts"
  value       = [for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : v.name]
}
output "active_directory_domain_service_trusts_password" {
  description = "List of password values across all active_directory_domain_service_trusts"
  value       = [for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : v.password]
  sensitive   = true
}
output "active_directory_domain_service_trusts_trusted_domain_dns_ips" {
  description = "List of trusted_domain_dns_ips values across all active_directory_domain_service_trusts"
  value       = [for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : v.trusted_domain_dns_ips]
}
output "active_directory_domain_service_trusts_trusted_domain_fqdn" {
  description = "List of trusted_domain_fqdn values across all active_directory_domain_service_trusts"
  value       = [for k, v in azurerm_active_directory_domain_service_trust.active_directory_domain_service_trusts : v.trusted_domain_fqdn]
}

