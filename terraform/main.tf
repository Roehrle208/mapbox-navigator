
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}


provider "github" {
  token = var.github_token
  owner = "Roehrle208"
}

resource "github_repository" "demo" {
  name        = "terraform-demo-repo"
  description = "Ein Beispiel-Repo über Terraform erstellt"
  visibility  = "public"
}
