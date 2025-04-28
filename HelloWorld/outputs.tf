output "service_name" {
  value = kubernetes_service.this.metadata[0].name
}

output "load_balancer_hostname" {
  value = kubernetes_service.this.status[0].load_balancer[0].ingress[0].hostname
  description = "The hostname of the LoadBalancer."
}
