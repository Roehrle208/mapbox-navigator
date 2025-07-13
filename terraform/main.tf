
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
  owner = "Roehrle208"
}

resource "github_repository" "mapbox_repo" {
  name        = "mapbox-navigator"
  description = "Ein Beispiel-Repo über Terraform erstellt"
  visibility  = "public"
}
