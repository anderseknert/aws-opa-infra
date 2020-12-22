resource "aws_key_pair" "opa_lab" {
  key_name   = "opa-lab"
  public_key = file(var.public_key_path)
}
