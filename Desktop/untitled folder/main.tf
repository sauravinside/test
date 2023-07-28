# IAM resources
resource "google_project" "project" {
  name       = var.project_id
  project_id = var.project_id
}

resource "google_project_iam_member" "project_team" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:divyanshu.avasthi@searce.com" # Replace with your email or desired IAM member
}

# Cloud Run resources
resource "google_cloud_run_service" "service" {
  name     = var.cloud_run_service_name
  location = var.region

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }
}
