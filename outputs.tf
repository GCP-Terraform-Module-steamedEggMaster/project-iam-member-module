output "project" {
  description = "IAM 멤버가 적용된 GCP 프로젝트 ID"
  value       = google_project_iam_member.project_iam_member.project
}

output "member" {
  description = "IAM 멤버 ID"
  value       = google_project_iam_member.project_iam_member.member
}

output "role" {
  description = "IAM 멤버에 할당된 역할"
  value       = google_project_iam_member.project_iam_member.role
}

output "condition" {
  description = "IAM 멤버의 조건 설정 (Optional)"
  value       = var.condition
}