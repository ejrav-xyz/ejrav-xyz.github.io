terraform {
  required_version = ">= 1.5.2"

  backend "s3" {
    bucket = "tech-cloudmason-tfstate"
    prefix = "env/local"
    region = var.aws_region
  }

}


