
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
    vercel = {
      source  = "vercel/vercel"
      version = "~> 3.8.0"
    }
  }
}

provider "github" {
  owner = "Roehrle208"
}

provider "vercel" {
  api_token = var.VERCEL_TOKEN
}

resource "github_repository" "mapbox_repo" {
  name        = "mapbox-navigator"
  description = "Ein Beispiel-Repo über Terraform erstellt"
  visibility  = "public"
}

resource "vercel_project" "mapbox_ui" {
  name      = "mapbox-navigator"
  framework = "vite"
  
  git_repository = {
    type = "github"
    repo = "Roehrle208/mapbox-navigator"
  }
}
