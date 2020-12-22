resource "aws_security_group" "opa_lab" {
  name        = "opa-lab-security-group"
  description = "Allow HTTP, HTTPS and SSH traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "opa-lab"
  }
}

resource "aws_eip" "opa_lab" {
  vpc      = true
  instance = aws_instance.opa_lab.id
}
