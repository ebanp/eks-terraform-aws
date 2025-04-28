resource "kubernetes_service" "this" {
  metadata {
    name      = "${var.app_name}-svc"
    namespace = kubernetes_namespace.this.metadata[0].name
  }

  spec {
    selector = {
      app = var.app_name
    }

    port {
      port        = var.service_port
      target_port = var.container_port
    }

    type = var.service_type
  }
}