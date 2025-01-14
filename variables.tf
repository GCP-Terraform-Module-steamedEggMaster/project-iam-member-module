variable "project" {
  description = "IAM 정책이 적용될 GCP 프로젝트 ID"
  type        = string
}

variable "member" {
  description = "IAM 멤버 ID (예: user:email@example.com, serviceAccount:example@project.iam.gserviceaccount.com)"
  type        = string
}

variable "role" {
  description = "IAM 역할 (예: roles/viewer)"
  type        = string
}

variable "condition" {
  description = <<EOT
IAM 조건 (Optional). 조건이 없는 경우 null로 설정하세요.
예:
{
  expression  = "request.time < timestamp('2023-12-31T23:59:59Z')"
  title       = "Temporary Access"
  description = "Access expires at the end of 2023"
}
EOT
  type = object({
    expression  = string
    title       = string
    description = optional(string)
  })
  default = null
}