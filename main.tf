terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.16.0"
    }
  }
}

provider "google" {
    credentials = "./keys/river-autumn-414819-277db6b86847.json"
  project = "river-autumn-414819"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "river-autumn-414819-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}