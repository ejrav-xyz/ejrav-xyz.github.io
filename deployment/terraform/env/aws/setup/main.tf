module "terraform_iam" {
  source    = "../../../modules/iam_terraform"
  namespace = local.project_namespace
}


module "github_oidc" {
  source = "../../../modules/github_oidc"

  oidc_repo = [
    "repo:ejrav-xyz/ejrav-xyz.github.io:*"
  ]
}