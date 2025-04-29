# EKS Terraform AWS Deployment 

Este repositorio contiene la infraestructura como código (IaC) para desplegar un clúster de Kubernetes en Amazon EKS utilizando Terraform, junto a un Deployment que expone un servicio "Hola Mundo" mediante un Load Balancer.


---


## Arquitectura de la Solución

- **AWS EKS (Elastic Kubernetes Service)** como orquestador de contenedores.
- **VPC propia** con subredes públicas y privadas.
- **IAM roles** configurados para EKS y nodos.
- **LoadBalancer** expone la aplicación web al público.
- **Pod** simple que ejecuta una aplicación "Hello World" en Kubernetes.

> La infraestructura es modular y escalable, usando módulos de Terraform oficiales para VPC, EKS, IAM.

---


## Decisiones de Diseño

- **Terraform como IaC**: Permite versionar y controlar cambios en infraestructura de manera reproducible.
- **Módulos Oficiales**: Se utilizan módulos bien mantenidos de terraform-aws-modules para VPC, EKS e IAM.
- **Separación de Recursos**: Organización clara de los módulos y despliegues para facilitar el mantenimiento.
- **Cero dependencia externa** (aparte de AWS): No requiere herramientas adicionales fuera de Terraform.

---


## Requisitos Previos

- Cuenta de AWS con permisos para EKS, VPC, IAM y Load Balancer.
- Terraform v1.6 o superior instalado.
- AWS CLI configurado localmente (para pruebas manuales).
- Secrets configurados en GitHub:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
- Opcional: kubectl instalado para conectarte al clúster.

---


## Configuración de Variables

Las variables principales están definidas en `variables.tf`. Algunas importantes:

| Variable          | Descripción                            | Valor por defecto |
|:------------------|:---------------------------------------|:------------------|
| `region`          | Región de AWS donde desplegar          | `us-east-2`       |
| `cluster_name`    | Nombre del clúster EKS                 | `eks-cluster`     |
| `vpc_cidr`        | CIDR para la VPC                       | `10.0.0.0/16`     |
| `public_subnets`  | Subredes públicas                      | Lista de CIDRs    |
| `private_subnets` | Subredes privadas                      | Lista de CIDRs    |

Puedes sobreescribirlas usando un archivo `terraform.tfvars` o en línea de comando.

---


##  Configuración de Secrets en GitHub Actions

Ve a **Settings > Secrets and variables > Actions** en tu repositorio y agrega:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

Además, puedes configurar como variable de entorno la región:

```yaml
env:
  AWS_REGION: us-east-2
