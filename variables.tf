variable "name" {
    type = string
    description = "(required) pipeline name"
}
variable "github_pat" {
    type = string
    description = "(required) github personal access token"
}
variable "project_id" {
    type = string
    description = "(required) azure devops project id"
}

variable "repository" {
    type = string
    description = "(required) github repository name"
}
variable "branch" {
    type = string
    description = "(required) github repository branch"
}

variable "path" {
    type = string
    description = "(required) path to the pipeline file"
    default = "azure-pipelines.yaml"
}

variable "pool" {
    type = string
    description = "(required) agent pool name"
}
variable "variables" {
    type = map(object({
        value = string
        is_secret = bool
    }))
    description = "pipeline variables"
}
