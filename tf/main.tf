terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.63.0"
    }
  }
}

provider "google" {
  project = "azubi-knowhow-building"
  region  = "us-central1"
}

resource "google_container_cluster" "dev" {
  name     = "shunt-dev-cluster"
  location = "us-central1"

  network    = "shunt-vpc"
  subnetwork = "shunt-vpc"

  # Enabling Autopilot for this cluster
  enable_autopilot = true
}