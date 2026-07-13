variable "active_directory_domain_service_trusts" {
  description = <<EOT
Map of active_directory_domain_service_trusts, attributes below
Required:
    - domain_service_id
    - name
    - password
    - password_key_vault_id (optional, alternative to password)
    - password_key_vault_secret_name (optional, alternative to password)
    - trusted_domain_dns_ips
    - trusted_domain_fqdn
EOT

  type = map(object({
    domain_service_id              = string
    name                           = string
    password                       = string
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    trusted_domain_dns_ips         = list(string)
    trusted_domain_fqdn            = string
  }))
}

