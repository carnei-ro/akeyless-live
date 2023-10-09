variable "name" {
  type        = string
  description = "Role name"
}

variable "analytics_access" {
  type        = string
  description = "Allow this role to view analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods."
  default     = "none"

  validation {
    condition     = can(regex("^(none|own|all)$", var.analytics_access))
    error_message = "analytics_access must be one of 'none', 'own' or 'all'"
  }
}

variable "audit_access" {
  type        = string
  description = "Allow this role to view audit logs. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view audit logs produced by the same auth methods."
  default     = "none"

  validation {
    condition     = can(regex("^(none|own|all)$", var.audit_access))
    error_message = "audit_access must be one of 'none', 'own' or 'all'"
  }
}

variable "description" {
  type        = string
  description = "Description of the object"
  default     = null
}

variable "gw_analytics_access" {
  type        = string
  description = "Allow this role to view gw analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods."
  default     = "none"

  validation {
    condition     = can(regex("^(none|own|all)$", var.gw_analytics_access))
    error_message = "gw_analytics_access must be one of 'none', 'own' or 'all'"
  }
}

variable "rules" {
  type = set(object({
    capability = set(string)
    path       = string
    rule_type  = optional(string)
  }))
  description = "Set a rule to a role"
  default     = []
}

variable "sra_reports_access" {
  type        = string
  description = "Allow this role to view SRA Clusters. Currently only 'none', 'own' and 'all' values are supported."
  default     = "none"

  validation {
    condition     = can(regex("^(none|own|all)$", var.sra_reports_access))
    error_message = "sra_reports_access must be one of 'none', 'own' or 'all'"
  }
}
