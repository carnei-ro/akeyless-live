output "am_name" {
  value       = akeyless_associate_role_auth_method.this.am_name
  description = "The auth method to associate"
}

output "role_name" {
  value       = akeyless_associate_role_auth_method.this.role_name
  description = "The role to associate"
}

output "case_sensitive" {
  value       = akeyless_associate_role_auth_method.this.case_sensitive
  description = "Treat sub claims as case-sensitive"
}

output "sub_claims" {
  value       = akeyless_associate_role_auth_method.this.sub_claims
  description = "key/val of sub claims, e.g group=admins,developers"
}

output "id" {
  value       = akeyless_associate_role_auth_method.this.id
  description = "The ID of this resource."
}
