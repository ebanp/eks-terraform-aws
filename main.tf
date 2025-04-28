provider "aws" {
  region     = var.region
  profile    = "default"
  access_key = ""
  secret_key = ""
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
  required_version = ">= 1.4.0"
}


