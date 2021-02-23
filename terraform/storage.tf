  
resource "google_storage_bucket" "terraform_mymilk-lab" {
  name          = "mymilk-lab-test-tf"
  location      = "europe-west3"
  storage_class = "REGIONAL"
  force_destroy = true
  project       = var.project_id

  versioning {
    enabled = "true"
  }

  labels = {
    "managed-by" : "terraform"
    "git-repo" : "central-services"
  }
}