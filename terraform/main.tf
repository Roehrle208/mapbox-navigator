
terraform {
  backend "remote" {
    organization = "roehrle208-cloud"

    workspaces {
      name = "mapbox-navigator"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = env.GITHUB_TOKEN
  owner = "Roehrle208"
}

resource "github_repository" "mapbox_repo" {
  name        = "mapbox_navigator"
  description = "Ein Beispiel-Repo über Terraform erstellt"
  visibility  = "public"
}
