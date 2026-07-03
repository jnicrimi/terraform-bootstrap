variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, stg, prod)"

  validation {
    condition     = contains(["dev", "stg", "prod"], var.environment)
    error_message = "environment は dev / stg / prod のいずれかを指定してください。"
  }
}

variable "project" {
  type        = string
  description = "Project name"

  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.project))
    error_message = "project名は小文字英数字とハイフンのみ使用可能です。"
  }
}

variable "tfstate_bucket_name" {
  type        = string
  description = "tfstate保存用S3バケット名"
}
