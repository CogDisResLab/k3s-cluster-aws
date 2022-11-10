terraform {

  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.4.3"
    }

  }
}

provider "aws" {
  # Configuration options
  alias  = "primary"
  region = "us-east-2"

  default_tags {
    tags = {
      environment = "k3s"
      managed_by  = "terraform"
      owner       = "ASI"
    }
  }
}

provider "aws" {
  # Configuration options
  alias  = "secondary"
  region = "us-east-1"
}

provider "aws" {
  # Configuration options
  alias  = "tertiary"
  region = "us-west-2"
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
