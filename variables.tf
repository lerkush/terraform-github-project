variable "github_token" {
  type        = string
  description = "GitHub Personal Access Token"
  sensitive   = true
}

variable "github_owner" {
  type        = string
  description = "GitHub account or organization name"
}

variable "repositories" {
  description = "List of repositories to create"
  type = map(object({
    description = string
    visibility  = string
  }))
}