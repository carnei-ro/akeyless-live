resource "akeyless_associate_role_auth_method" "this" {
  am_name        = var.am_name
  role_name      = var.role_name
  case_sensitive = var.case_sensitive
  sub_claims     = var.sub_claims
}
