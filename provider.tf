provider "google" {
  project = "db-cicdpipeline-wave3"
  region  = "asia-south2" 
}

#variable "roles" {
 # type = list(string)
  #default = ["roles/storage.objectCreator", "roles/storage.objects.list"]
#}

#resource "google_storage_bucket_iam_binding" "binding" {
 # for_each = toset(var.roles)
  #bucket = "db-cicd-wave3"
  # role   = "roles/storage.admin"  
 # role     = each.value
#  members = ["serviceAccount:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com"]
#}

resource "google_storage_bucket_iam_member" "list_permission" {
  bucket = "asia-south2-composer-enviro-719fa6a7-bucket/dags"
  role   = "roles/storage.legacyBucketReader"
  member = "serviceAccount:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com"
}
