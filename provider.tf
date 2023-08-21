provider "google" {
  project = "db-cicdpipeline-wave3"
  region  = "asia-south2"  # Use appropriate region
}

resource "google_storage_bucket_iam_binding" "binding" {
  bucket = "db-cicd-wave3"
  # role   = "roles/storage.admin"   Replace with the desired role
  role   = "roles/storage.objects.create"
  members = "serviceAccount:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com"
}
