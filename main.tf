resource "google_project_iam_member" "project_iam_member" {
  # 필수 설정
  project = var.project # IAM 정책을 적용할 프로젝트 ID
  member  = var.member  # IAM 멤버 ID (예: user:email@example.com, serviceAccount:example@project.iam.gserviceaccount.com)
  role    = var.role    # 할당할 IAM 역할 (예: roles/viewer)

  # 선택적 조건 설정
  dynamic "condition" {
    for_each = var.condition != null ? [var.condition] : []
    content {
      expression  = condition.value.expression  # 조건식
      title       = condition.value.title       # 조건 제목
      description = condition.value.description # 조건 설명 (Optional)
    }
  }
}