provider "helm" {
  kubernetes = {
    host                   = var.kube_config[0].host
    client_certificate     = base64decode(var.kube_config[0].client_certificate)
    client_key             = base64decode(var.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(var.kube_config[0].cluster_ca_certificate)
  }
}

resource "helm_release" "nginx_ingress" {
  name             = "ingress-nginx"
  namespace        = "ingress-nginx"
  create_namespace = true
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
}