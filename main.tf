data "azuredevops_agent_pool" "agent_pool" {
  name = var.pool
}

# RESOURCES
resource "azuredevops_variable_group" "library" {
  project_id = var.project_id
  name       = var.name
  allow_access = true

  dynamic "variable" {
    for_each = var.variables
    content {
      name  = variable.key
      value = variable.value.value
      is_secret = variable.value.is_secret
    }
  }
}

resource "azuredevops_serviceendpoint_github" "github" {
  project_id            = var.project_id
  service_endpoint_name = "${var.name}-github-Terraform"

  auth_personal {
    personal_access_token = var.github_pat
  }
}

resource "azuredevops_build_definition" "pipeline" {
  project_id = var.project_id

  name = var.name
  repository {
    repo_type = "GitHub"
    repo_id = var.repository
    yml_path = var.path
    service_connection_id = azuredevops_serviceendpoint_github.github.id
    branch_name = var.branch
  }
  ci_trigger {
    use_yaml = true
  }

  variable_groups = [
    azuredevops_variable_group.library.id
  ]
  variable {
    allow_override = true
    is_secret = false
    name = "IMAGE_REPOSITORY"
    value = "aqaurius6666/test"
  }
  variable {
    allow_override = true
    is_secret = false
    name = "TAG"
    value = "latest"
  }
}
