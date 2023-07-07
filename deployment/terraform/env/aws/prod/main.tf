

module "s3_static_website" {
  source = "../../../modules/s3_static_website"

  www_domain = var.www_domain
}