resource "aws_ecr_repository" "eks_ecr" {
  name                 = "eks_terraform_ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    name        = "terraform_ecr"
    environment = "username"
  }

}