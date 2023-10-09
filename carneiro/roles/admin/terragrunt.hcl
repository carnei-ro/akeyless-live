include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_repo_root()}//_modules/role"
}

inputs = {
  name = "admin"

  analytics_access    = "all"
  audit_access        = "all"
  gw_analytics_access = "all"
  sra_reports_access  = "all"
}
