output "project_iam_member_details" {
  description = "IAM 멤버 정책 세부 정보"
  value = {
    project = module.project_iam_member.project # IAM 멤버가 적용된 GCP 프로젝트 ID
    member  = module.project_iam_member.member  # IAM 멤버 ID
    role    = module.project_iam_member.role    # IAM 멤버에 할당된 역할
  }
}