provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

variable "secret" {
  type    = string
  default = "HelloWorld"
}

resource "helm_release" "nginx" {
  name       = "nginx"
  chart      = "bitnami/nginx"

}
