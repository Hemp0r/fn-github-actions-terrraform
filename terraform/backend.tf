terraform {
  backend "gcs" {
    bucket = "mymilk-lab-terraform"
    prefix = "gha-test"
  }
}