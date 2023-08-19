provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"  # Use appropriate region
}

resource "google_storage_bucket_iam_member" "role" {
  bucket = "asia-south2-composer-enviro-719fa6a7-bucket"
  role   = "roles/storage.admin"  # Replace with the desired role

  member = "serviceAccount:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com"
}
}
