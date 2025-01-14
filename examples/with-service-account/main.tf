module "service_account" {
  source = "git::https://github.com/GCP-Terraform-Module-steamedEggMaster/service-account-module.git?ref=v1.0.0"

  account_id = "test-service-account"
}

module "project_iam_member" {
  source = "../../" # 모듈 경로

  project = "happydevops"                                    # GCP 프로젝트 ID
  member  = "serviceAccount:${module.service_account.email}" # IAM 멤버 ID
  role    = "roles/viewer"                                   # IAM 역할
}