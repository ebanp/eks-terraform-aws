#Terraform EKS - Hola Mundo
Este proyecto despliega una aplicación de Hola Mundo en un EKS de AWS usando Terraform.

📦 ¿Qué crea este proyecto?
Namespace en Kubernetes: hola-mundo

Deployment de un pod usando hashicorp/http-echo

Service tipo LoadBalancer para exponer el pod públicamente


⚙️ Requisitos
Terraform >= 1.29

AWS CLI configurado

Un EKS activo (o módulo de EKS creado)

🚀 ¿Cómo usar?
bash
Copiar
Editar
cd bootstrap/
terraform init
terraform apply

cd ..
terraform init
terraform apply
Al terminar, Terraform mostrará el URL del LoadBalancer.
Visítalo en el navegador para ver Hola Mundo.

🎯 Tecnologías
Terraform

AWS EKS

Kubernetes


🛠️ Comandos útiles
bash
Copiar
Editar
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
👨‍💻 Autor
(Esteban Pulido)

# eks-terraform-aws
