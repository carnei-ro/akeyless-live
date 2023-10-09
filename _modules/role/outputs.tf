output "id" {
  value       = akeyless_role.this.name
  description = "Resource ID (generally the name)"
}

output "name" {
  value       = akeyless_role.this.name
  description = "Role name"
}

output "analytics_access" {
  value       = akeyless_role.this.analytics_access
  description = "Allow this role to view analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods."
}

output "audit_access" {
  value       = akeyless_role.this.audit_access
  description = "Allow this role to view audit logs. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view audit logs produced by the same auth methods."
}

output "description" {
  value       = akeyless_role.this.description
  description = "Description of the object"
}

output "gw_analytics_access" {
  value       = akeyless_role.this.gw_analytics_access
  description = "Allow this role to view gw analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods."
}

output "rules" {
  value       = akeyless_role.this.rules
  description = "Set a rule to a role"
}

output "sra_reports_access" {
  value       = akeyless_role.this.sra_reports_access
  description = "Allow this role to view SRA Clusters. Currently only 'none', 'own' and 'all' values are supported."
}
