## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >=0.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | >=0.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_build_definition.pipeline](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/build_definition) | resource |
| [azuredevops_serviceendpoint_github.github](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/serviceendpoint_github) | resource |
| [azuredevops_variable_group.library](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/variable_group) | resource |
| [azuredevops_agent_pool.agent_pool](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/agent_pool) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch"></a> [branch](#input\_branch) | (required) github repository branch | `string` | n/a | yes |
| <a name="input_github_pat"></a> [github\_pat](#input\_github\_pat) | (required) github personal access token | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (required) pipeline name | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | (required) path to the pipeline file | `string` | `"azure-pipelines.yaml"` | no |
| <a name="input_pool"></a> [pool](#input\_pool) | (required) agent pool name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | (required) azure devops project id | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | (required) github repository name | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | pipeline variables | <pre>map(object({<br>        value = string<br>        is_secret = bool<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pipeline_id"></a> [pipeline\_id](#output\_pipeline\_id) | n/a |
| <a name="output_pipeline_name"></a> [pipeline\_name](#output\_pipeline\_name) | n/a |
| <a name="output_pipeline_variable_group_id"></a> [pipeline\_variable\_group\_id](#output\_pipeline\_variable\_group\_id) | n/a |
| <a name="output_pipeline_variables"></a> [pipeline\_variables](#output\_pipeline\_variables) | n/a |
