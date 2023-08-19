resource "google_storage_bucket_iam_binding" "binding" {
  bucket = asia-south2-composer-enviro-719fa6a7-bucket
  role = "roles/storage.admin"
  members = [
    "user:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com",
  ]
}
