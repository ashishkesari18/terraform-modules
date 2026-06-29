output "bucket_name"{
    value = aws_s3_bucket.redefined.bucket
}
output "bucket_arn" {
  value = aws_s3_bucket.redefined.arn
}