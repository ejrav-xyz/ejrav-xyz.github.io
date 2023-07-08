data "aws_iam_policy_document" "terraform-ci-role-policy" {

  statement {
    sid = "ApplicationObjectAccess"

    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      "arn:aws:s3:::${var.domain_name}",
      "arn:aws:s3:::${var.domain_name}/*",
    ]
  }


}


data "aws_iam_policy_document" "terraform-ci-role-assume-policy" {
  statement {
    actions = ["sts:AssumeRole"]
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["codebuild.amazonaws.com"]
    }
  }
}