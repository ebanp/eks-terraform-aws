variable "region" {
  description = var.AWS_REGION
  type        = string
}

variable "vpc_name" {
  description = "AWS vpc"
  type        = string
  default     = "eks-terraform-vpc"
}

variable "AWS_ACCESS_KEY_ID" {
  description = var.AWS_ACCESS_KEY_ID
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = var.AWS_SECRET_ACCESS_KEY
  type        = string
}
