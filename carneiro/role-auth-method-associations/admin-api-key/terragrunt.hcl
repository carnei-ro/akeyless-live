include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_repo_root()}//_modules/role-auth-method-association"
}

dependency "role" {
  config_path = "../../roles/admin"
}

dependency "auth_method" {
  config_path = "../../auth-methods/api-key/API-Key"
}

inputs = {
  am_name        = replace(dependency.auth_method.outputs.name, "/", "")
  role_name      = dependency.role.outputs.name
  case_sensitive = true
}
