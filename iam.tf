resource "aws_iam_role" "opa_lab_role" {
  name = "opa_lab_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "opa_lab_profile" {
  name = "opa_lab_profile"
  role = aws_iam_role.opa_lab_role.name
}

resource "aws_iam_role_policy" "opa_lab_policy" {
  name = "opa_lab_policy"
  role = aws_iam_role.opa_lab_role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

}