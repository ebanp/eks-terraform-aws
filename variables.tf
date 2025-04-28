variable "region" {
  type = string
}

variable "vpc_name" {
  description = "AWS vpc"
  type        = string
  default     = "eks-terraform-vpc"
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "namespace" {
  type    = string
  default = "hola-mundo"
}

variable "app_name" {
  type    = string
  default = "hola-mundo-app"
}

variable "replicas" {
  type    = number
  default = 1
}

variable "container_port" {
  type    = number
  default = 8080
}

variable "service_port" {
  type    = number
  default = 80
}

variable "service_type" {
  type    = string
  default = "LoadBalancer"
}

variable "app_image" {
  type    = string
  default = "hashicorp/http-echo:0.2.3"
}

variable "app_args" {
  type    = list(string)
  default = ["-text=Hola Mundo"]
}

