variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_name" {
  description = "AWS vpc"
  type        = string
  default     = "eks-terraform-vpc"
}