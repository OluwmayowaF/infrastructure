resource "azurerm_resource_group" "consul-rg" {
  name     = var.aks_resource_group_name
  location = var.aks_k8s_location
}

resource "azurerm_kubernetes_cluster" "consul-cluster" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.consul-rg.location
  resource_group_name = azurerm_resource_group.consul-rg.name
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.aks_tag_environment
  }
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.consul-cluster.kube_config.0.client_certificate
  sensitive = true

}

output "kube_config" {
  value = azurerm_kubernetes_cluster.consul-cluster.kube_config_raw
  sensitive = true
}