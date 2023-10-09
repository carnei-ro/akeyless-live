# Role Auth-Method Association

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_akeyless"></a> [akeyless](#provider\_akeyless) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [akeyless_associate_role_auth_method.this](https://registry.terraform.io/providers/hashicorp/akeyless/latest/docs/resources/associate_role_auth_method) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_am_name"></a> [am\_name](#input\_am\_name) | The auth method to associate | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The role to associate | `string` | n/a | yes |
| <a name="input_case_sensitive"></a> [case\_sensitive](#input\_case\_sensitive) | Treat sub claims as case-sensitive | `bool` | `true` | no |
| <a name="input_sub_claims"></a> [sub\_claims](#input\_sub\_claims) | key/val of sub claims, e.g group=admins,developers | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_am_name"></a> [am\_name](#output\_am\_name) | The auth method to associate |
| <a name="output_case_sensitive"></a> [case\_sensitive](#output\_case\_sensitive) | Treat sub claims as case-sensitive |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | The role to associate |
| <a name="output_sub_claims"></a> [sub\_claims](#output\_sub\_claims) | key/val of sub claims, e.g group=admins,developers |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Import

`akeyless_associate_role_auth_method` can be imported using one of the following: `<role_name>:<am_name>` or `<role_name>:<association_id>`.
