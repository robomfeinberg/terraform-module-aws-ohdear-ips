# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------

output "ohdear_ipv4list" {
  description = "A list of IPv4 Addresses for ohdear.app monitoring"
  value       = formatlist("%s/32", local.ohdear_ips[*].ipv4)
}

output "ohdear_ipv6list" {
  description = "A list of IPv6 Addresses for ohdear.app monitoring"
  value       = formatlist("%s/128", local.ohdear_ips[*].ipv6)
}


