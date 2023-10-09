# ------------------------------------------------------------------------------
# TERRAGRUNT CONFIGURATION
# ------------------------------------------------------------------------------

# Version constraints
terraform_version_constraint  = ">= 1.4.6"
terragrunt_version_constraint = ">= 0.45.0"

# Local aliases for improved maintainability
locals {
  repo_root = get_repo_root()

  account_name = split("/", get_path_from_repo_root())[0]

  # Automatically load account variables
  account_vars = read_terragrunt_config(format("%s/%s/account.hcl", local.repo_root, local.account_name)).locals
}

# Copy the first .tool-versions file found in the directory hierarchy when blueprint has none,
# otherwise skip and use one defined in blueprint.
# NOTE: requires ASDF-VM (https://asdf-vm.com)
generate "tool_versions" {
  path      = ".tool-versions"
  if_exists = "skip"
  contents  = file(find_in_parent_folders(".tool-versions"))
}

# Generate the akeyless provider config
generate "akeyless_provider" {
  path      = "_tg-akeyless-provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
    provider "akeyless" {
      api_key_login {
        access_id = "${local.account_vars.access_id}"
        access_key = "${local.account_vars.access_key}"
      }
    }
  EOF
}

# Generate the Backend config
generate "backend" {
  path      = "_backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
    terraform {
      required_providers {
        akeyless = {
          version = ">= 1.4.0"
          source  = "akeyless-community/akeyless"
        }
      }
    }
  EOF
}

retry_max_attempts       = 5
retry_sleep_interval_sec = 15

retryable_errors = [
]

inputs = {
}
