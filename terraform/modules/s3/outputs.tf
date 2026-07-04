output "bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "S3バケット ID"
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = "S3バケット ARN"
}
