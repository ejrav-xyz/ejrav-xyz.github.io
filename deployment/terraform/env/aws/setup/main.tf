module "terraform_iam" {
  source    = "../../../modules/iam_terraform"
  namespace = local.project_namespace
}

