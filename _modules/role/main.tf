resource "akeyless_role" "this" {
  name = var.name

  analytics_access    = var.analytics_access
  audit_access        = var.audit_access
  description         = var.description
  gw_analytics_access = var.gw_analytics_access
  sra_reports_access  = var.sra_reports_access

  dynamic "rules" {
    for_each = var.rules

    content {
      capability = rules.value.capability
      path       = rules.value.path
      rule_type  = rules.value.rule_type
    }
  }
}
