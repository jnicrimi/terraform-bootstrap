output "bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "S3バケット ID"
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = "S3バケット ARN"
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.this.bucket_domain_name
  description = "S3バケット ドメイン名"
}
