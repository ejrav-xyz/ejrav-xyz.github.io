data "aws_iam_policy_document" "s3_role_access_policy" {

  statement {
    sid = "ApplicationObjectAccess"

    effect = "Allow"

    actions = [
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.s3-bucket-lifecycle.arn,
      "${aws_s3_bucket.s3-bucket-lifecycle.arn}/*",
    ]
  }
}