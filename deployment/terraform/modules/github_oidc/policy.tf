data "aws_iam_policy_document" "github" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [aws_iam_openid_connect_provider.default.arn]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }

    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:github_workspace/application_repo:*"]
    }
  }

  depends_on = [
    aws_iam_openid_connect_provider.default
  ]
}

resource "aws_iam_role" "github" {
  name               = "github-oidc"
  assume_role_policy = data.aws_iam_policy_document.github.json

  depends_on = [
    aws_iam_openid_connect_provider.default
  ]
}