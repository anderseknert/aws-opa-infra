resource "aws_instance" "opa_lab" {
  key_name             = aws_key_pair.opa_lab.key_name
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.opa_lab_profile.name


  tags = {
    Name = "opa-lab"
  }

  vpc_security_group_ids = [
    aws_security_group.opa_lab.id
  ]
}