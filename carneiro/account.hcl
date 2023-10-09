locals {
  account_name = "carneiro"
  access_id    = get_env(format("AKEYLESS_ACCESS_ID_%s", upper(local.account_name)))
  access_key   = get_env(format("AKEYLESS_ACCESS_KEY_%s", upper(local.account_name)))
}
