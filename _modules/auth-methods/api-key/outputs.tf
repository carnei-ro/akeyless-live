output "name" {
  description = "Auth Method name"
  value       = akeyless_auth_method_api_key.this.name
}

output "access_expires" {
  description = "Access expiration date in Unix timestamp. Select 0 for access without expiry date."
  value       = akeyless_auth_method_api_key.this.access_expires
}

output "access_id" {
  description = "Auth Method access ID"
  value       = akeyless_auth_method_api_key.this.access_id
}

output "access_key" {
  sensitive   = true
  value       = akeyless_auth_method_api_key.this.access_key
  description = "Auth Method access key"
}

output "bound_ips" {
  description = "A CIDR whitelist with the IPs that the access is restricted to"
  value       = akeyless_auth_method_api_key.this.bound_ips
}

output "force_sub_claims" {
  description = "enforce role-association must include sub claims"
  value       = akeyless_auth_method_api_key.this.force_sub_claims
}

output "id" {
  description = "The ID of this resource."
  value       = akeyless_auth_method_api_key.this.id
}
