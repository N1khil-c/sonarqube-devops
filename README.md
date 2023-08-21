# infra_structure_repo
created for practice CICD implementation
WIF https://iam.googleapis.com/projects/36949417800/locations/global/workloadIdentityPools/garage-cicd/providers/wave-3-terra
service account : cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com

gcloud projects add-iam-policy-binding db-cicdpipeline-wave3 --member=serviceAccount:serviceAccount:cicd-wave3-serviceaccot@db-cicdpipeline-wave3.iam.gserviceaccount.com --role=roles/storage.admin
