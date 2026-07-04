variable "bucket_name" {
  type        = string
  description = "S3バケット名"

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", var.bucket_name))
    error_message = "バケット名は3-63文字で、小文字、数字、ハイフン、ピリオドのみ使用可能。"
  }
}

variable "noncurrent_version_expiration_days" {
  type        = number
  description = "旧バージョンのオブジェクトを削除するまでの日数"
  default     = 90

  validation {
    condition     = var.noncurrent_version_expiration_days >= 1
    error_message = "noncurrent_version_expiration_days は 1 以上を指定してください。"
  }
}
