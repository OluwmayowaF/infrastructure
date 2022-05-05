terraform {
  required_version = ">= 0.13.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.11.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.5.1"
    }
  }
}

provider "kubernetes" {
  # Configuration options
  config_path    = "./kube/config"
  config_context = "consul-dc2-cluster"
}

provider "helm" {
  # Configuration options
   kubernetes {
    config_path    = "./kube/config"
  }
}