variable "ami" {
  type        = string
  description = "The AMI to use for the EC2 instance"
  default     = "ami-0a3a4169ad7cb0d77" # Ubuntu 20.04 eu-north-1
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t3.micro"
}

variable "bucket_name" {
  type        = string
  description = "Bucket name"
  default     = "opa-lab-bucket"
}

variable "public_key_path" {
  type        = string
  description = "Path to public key to use for SSH access"
}
