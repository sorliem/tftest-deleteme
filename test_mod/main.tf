terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.6.3"
}

provider "http" {}

data "http" "github_api_meta" {
  url = "https://api.github.com/meta"
}

output "gh_metadata" {
  value = data.http.github_api_meta.response_body
}
