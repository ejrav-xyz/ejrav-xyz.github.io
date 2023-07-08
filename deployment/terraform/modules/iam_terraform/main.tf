resource "aws_iam_role" "ci-role" {
  name               = "${var.namespace}-terraform-ci-role"
  assume_role_policy = data.aws_iam_policy_document.terraform-ci-role-assume-policy.json
  inline_policy {
    name   = "terraform-ci-role-policy"
    policy = data.aws_iam_policy_document.terraform-ci-role-policy.json
  }

  tags = {
    ns = var.namespace
  }
}