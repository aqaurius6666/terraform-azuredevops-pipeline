output "pipeline_name" {
    value = var.name
}

output "pipeline_variable_group_id" {
    value = azuredevops_variable_group.library.id
}

output "pipeline_id" {
    value = azuredevops_build_definition.pipeline.id
}

output "pipeline_variables" {
    value = var.variables
}