provider "aws" {
  region     = var.region
  profile    = "default"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
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

terraform {
  backend "s3" {
    bucket         = "mybucketawsterraform3"
    key            = "infra/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "state-lock-table"
    encrypt        = true
  }
}
