terraform {
  backend "gcs" {
    bucket = "terraform-lab8-state"
    prefix = "terraform/state"
  }
}
