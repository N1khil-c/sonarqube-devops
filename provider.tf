provider "google" {
  project = "db-cicdpipeline-wave3"
  region  = "asia-south2" 
}

resource "google_storage_bucket_iam_binding" "binding" {
  bucket = "db-cicd-wave3"
  # role   = "roles/storage.admin"  
  role   = "roles/storage.objects.create"
  members = ["serviceAccount:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com"]
}
