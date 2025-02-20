resource "null_resource" "test_prod" {

}

resource "null_resource" "test_prod2223" {

}

resource "aws_iam_role" "test_role3" {
  name = "test_role3"

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

  tags = {
    tag-key = "tag-value"
  }
}

resource "null_resource" "test_prod22234" {

}
