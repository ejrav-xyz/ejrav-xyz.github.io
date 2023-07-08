terraform {
  required_version = ">= 1.5.2"

  backend "s3" {
    bucket = "tech-cloudmason-tfstate"
    key    = "env/setup/terraform.tfstate"
    region = "eu-west-1"
    profile = "default"
  }

}


