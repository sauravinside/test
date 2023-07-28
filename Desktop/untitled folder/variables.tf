variable "project_id" {
  description = "The ID of the GCP project."
}

variable "region" {
  description = "The GCP region where Cloud Run service will be deployed."
  default     = "us-central1"
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud Run service."
}
