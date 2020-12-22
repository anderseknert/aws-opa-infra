resource "aws_s3_bucket" "opa_lab" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true

  tags = {
    Name = "OPA lab bucket"
  }
}
