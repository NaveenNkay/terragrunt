terraform {
  backend "gcs" {
    bucket = "terragrunt-2212"
    prefix = "terraform/state"   
  }
}
