output "tfstate_bucket_id" {
  value       = module.tfstate_bucket.bucket_id
  description = "tfstate保存用S3バケット ID"
}

output "tfstate_bucket_arn" {
  value       = module.tfstate_bucket.bucket_arn
  description = "tfstate保存用S3バケット ARN"
}
