variable "namespace" { type = string }

variable "domain_name" { type = string }

variable "hosted_zone" { type = string }

variable "cloudfront_min_ttl" {
  type    = number
  default = 0
}

variable "cloudfront_default_ttl" {
  type    = number
  default = 3600
}

variable "cloudfront_max_ttl" {
  type    = number
  default = 86400
}

// none, whitelist, or blacklist.
variable "cloudfront_geo_restriction_restriction_type" {
  type    = string
  default = "none"
}

// PriceClass_100, PriceClass_200, PriceClass_All
variable "cloud_price_class" {
  type    = string,
  default = "PriceClass_100"
}