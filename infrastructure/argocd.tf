resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "4.5.1"

  namespace        = "argocd"
  create_namespace = true

  values = [
    "${file("argocd-values.yaml")}"
  ]
}