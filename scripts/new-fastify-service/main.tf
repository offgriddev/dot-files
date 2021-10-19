provider "google" {
  project = var.project_id
  region = "us-central1"
  zone = "us-central1-c"
  credentials = file(var.credentials)
}

terraform {
  backend "gcs"{
    bucket      = "${var.project_id}/terraform-state"
    prefix      = "dev"
    credentials = "credentials.json"
  }
}


