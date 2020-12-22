resource "aws_s3_bucket" "opa_lab" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name = "OPA lab bucket"
  }
}
