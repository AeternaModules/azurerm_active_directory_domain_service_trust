data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.active_directory_domain_service_trusts : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_active_directory_domain_service_trust" "active_directory_domain_service_trusts" {
  for_each = var.active_directory_domain_service_trusts

  domain_service_id      = each.value.domain_service_id
  name                   = each.value.name
  password               = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  trusted_domain_dns_ips = each.value.trusted_domain_dns_ips
  trusted_domain_fqdn    = each.value.trusted_domain_fqdn
}

