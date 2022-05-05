resource "kubernetes_namespace" "consul" {
  metadata {
    name = "consul"
  }
}

resource "kubernetes_secret" "consul" {
  metadata {
     name = "consul-federation"
     namespace    = "consul"

  }

  data = {
    "caCert" = "${file("${var.consul_cacert_file}")}"
    "caKey" = "${file("${var.consul_cakey_file}")}"
    "replicationToken" = var.consul_replication_token
    "gossipEncryptionKey" = var.consul_gossip_encryption_key
  }

  type = "Opaque"
  
  depends_on = [kubernetes_namespace.consul]

}


resource "helm_release" "consul_datacenter" {
  name       = "consul"
  repository = "hashicorp"
  chart      = "consul"
  namespace    = "consul"

  values = [
    "${file("./helm/config-main.yaml")}"
  ]
  depends_on = [kubernetes_secret.consul]
}