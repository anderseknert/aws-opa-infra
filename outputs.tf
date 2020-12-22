output "opa_lab_public_ip" {
  value       = aws_eip.opa_lab.public_ip
  description = "External IP"
}

output "opa_bucket_domain_name" {
  value       = aws_s3_bucket.opa_lab.bucket_domain_name
  description = "Bucket domain name"
}
