resource "aws_iam_user" "terraform_iam_user" {
  name = "${var.namespace}-terraform-ci"
}

resource "aws_iam_access_key" "terraform_iam_user_key" {
  user = aws_iam_user.terraform_iam_user.name
}

output "secret_key" {
  value     = aws_iam_access_key.terraform_iam_user_key.secret
  sensitive = true
}

output "access_key" {
  value = aws_iam_access_key.terraform_iam_user_key.id
}