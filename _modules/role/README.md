# Role

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
| [akeyless_role.this](https://registry.terraform.io/providers/hashicorp/akeyless/latest/docs/resources/role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Role name | `string` | n/a | yes |
| <a name="input_analytics_access"></a> [analytics\_access](#input\_analytics\_access) | Allow this role to view analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods. | `string` | `"none"` | no |
| <a name="input_audit_access"></a> [audit\_access](#input\_audit\_access) | Allow this role to view audit logs. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view audit logs produced by the same auth methods. | `string` | `"none"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the object | `string` | `null` | no |
| <a name="input_gw_analytics_access"></a> [gw\_analytics\_access](#input\_gw\_analytics\_access) | Allow this role to view gw analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods. | `string` | `"none"` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | Set a rule to a role | <pre>set(object({<br>    capability = set(string)<br>    path       = string<br>    rule_type  = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_sra_reports_access"></a> [sra\_reports\_access](#input\_sra\_reports\_access) | Allow this role to view SRA Clusters. Currently only 'none', 'own' and 'all' values are supported. | `string` | `"none"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_analytics_access"></a> [analytics\_access](#output\_analytics\_access) | Allow this role to view analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods. |
| <a name="output_audit_access"></a> [audit\_access](#output\_audit\_access) | Allow this role to view audit logs. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view audit logs produced by the same auth methods. |
| <a name="output_description"></a> [description](#output\_description) | Description of the object |
| <a name="output_gw_analytics_access"></a> [gw\_analytics\_access](#output\_gw\_analytics\_access) | Allow this role to view gw analytics. Currently only 'none', 'own' and 'all' values are supported, allowing associated auth methods to view reports produced by the same auth methods. |
| <a name="output_id"></a> [id](#output\_id) | Resource ID (generally the name) |
| <a name="output_name"></a> [name](#output\_name) | Role name |
| <a name="output_rules"></a> [rules](#output\_rules) | Set a rule to a role |
| <a name="output_sra_reports_access"></a> [sra\_reports\_access](#output\_sra\_reports\_access) | Allow this role to view SRA Clusters. Currently only 'none', 'own' and 'all' values are supported. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
