
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.75.0"
    }
  }
}

provider "google" {
  credentials = file("/Users/saurav/Downloads/test-project-saurav-707cdb5e49b7.json")
  project     = var.project_id
  region      = var.region
}