output "bucket-name" {
  value = aws_s3_bucket.my-s3-bucket.bucket
}

output "arn" {
  value = aws_s3_bucket.my-s3-bucket.arn
}