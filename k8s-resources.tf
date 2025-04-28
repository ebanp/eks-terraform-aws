# Archivo: hello_world.tf

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

resource "kubernetes_namespace" "hello_world" {
  metadata {
    name = "hello-world"
  }
}

resource "kubernetes_deployment" "hello_world" {
  metadata {
    name      = "hello-world"
    namespace = kubernetes_namespace.hello_world.metadata[0].name
    labels = {
      app = "hello-world"
    }
  }
  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "hello-world"
      }
    }

    template {
      metadata {
        labels = {
          app = "hello-world"
        }
      }
      spec {
        container {
          name  = "hello-world"
          image = "nginxdemos/hello:latest" # Imagen simple de Hello World

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "hello_world" {
  metadata {
    name      = "hello-world-service"
    namespace = kubernetes_namespace.hello_world.metadata[0].name
  }
  spec {
    selector = {
      app = "hello-world"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
