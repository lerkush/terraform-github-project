terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "github_repository" "repos" {
  for_each = var.repositories

  name        = each.key
  description = each.value.description
  visibility  = each.value.visibility
  has_issues  = true
  has_wiki    = false
}
