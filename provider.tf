provider "google" {
  credentials = file("terraform-sa-key.json")
  project     = var.project
  region      = var.region
}
