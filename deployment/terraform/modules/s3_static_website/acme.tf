data "aws_acm_certificate" "acm_cert" {
  domain   = var.domain_name
  provider = aws.aws_cloudfront
  //CloudFront uses certificates from US-EAST-1 region only
  statuses = [
    "ISSUED",
  ]
}


