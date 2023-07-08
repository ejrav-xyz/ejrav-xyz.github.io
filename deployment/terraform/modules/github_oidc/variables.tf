variable "oidc_url" {
  type    = string
  default = "https://token.actions.githubusercontent.com"
}

variable "oidc_client_id_list" {
  type    = list(string)
  default = [
    "sts.amazonaws.com"
  ]
}

variable "oidc_thumbprint_list" {
  type    = list(string)
  default = [
    "6938fd4d98bab03faadb97b34396831e3780aea1"
  ]
}


variable "oidc_repo" {
  type = list(string)
}

variable "namespace" { type = string }