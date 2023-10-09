resource "akeyless_auth_method_api_key" "this" {
  name             = var.name
  access_expires   = var.access_expires
  access_id        = var.access_id
  access_key       = var.access_key
  bound_ips        = var.bound_ips
  force_sub_claims = var.force_sub_claims
}
