# Auth Method - API Key

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
| [akeyless_auth_method_api_key.this](https://registry.terraform.io/providers/hashicorp/akeyless/latest/docs/resources/auth_method_api_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Auth Method name | `string` | n/a | yes |
| <a name="input_access_expires"></a> [access\_expires](#input\_access\_expires) | Access expiration date in Unix timestamp. Select 0 for access without expiry date. | `number` | `0` | no |
| <a name="input_access_id"></a> [access\_id](#input\_access\_id) | Auth Method access ID | `string` | `null` | no |
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Auth Method access key | `string` | `null` | no |
| <a name="input_bound_ips"></a> [bound\_ips](#input\_bound\_ips) | A CIDR whitelist with the IPs that the access is restricted to | `set(string)` | `[]` | no |
| <a name="input_force_sub_claims"></a> [force\_sub\_claims](#input\_force\_sub\_claims) | Enforce role-association must include sub claims | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_expires"></a> [access\_expires](#output\_access\_expires) | Access expiration date in Unix timestamp. Select 0 for access without expiry date. |
| <a name="output_access_id"></a> [access\_id](#output\_access\_id) | Auth Method access ID |
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | Auth Method access key |
| <a name="output_bound_ips"></a> [bound\_ips](#output\_bound\_ips) | A CIDR whitelist with the IPs that the access is restricted to |
| <a name="output_force_sub_claims"></a> [force\_sub\_claims](#output\_force\_sub\_claims) | enforce role-association must include sub claims |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_name"></a> [name](#output\_name) | Auth Method name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
