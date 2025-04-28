variable "namespace" {
  type = string
}

variable "app_name" {
  type = string
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
}

variable "app_args" {
  type    = list(string)
  default = []
}
