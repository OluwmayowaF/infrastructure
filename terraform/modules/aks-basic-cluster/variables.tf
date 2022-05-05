variable "aks_resource_group_name" {
  default     = "consul-group"
  description = "Name of the AKS resource consul group"
  type        = string
}

variable "aks_cluster_name" {
  default     = "consul-dc2-cluster"
  description = "Name of the AKS K8s Cluster"
  type        = string
}

variable "aks_k8s_location" {
  default     = "Central US"
  description = "Name of the AKS K8s Cluster"
  type        = string
}

variable "aks_dns_prefix" {
  default     = "consul"
  description = "Name of the AKS dns prefix"
  type        = string
}

variable "node_pool_name" {
  default     = "consul"
  description = "Name of the node pool "
  type        = string
}

variable "node_count" {
  default     = 1
  description = "Node count"
  type        = number
}

variable "node_vm_size" {
  default     = "Standard_D2_v2"
  description = "Node pool vm Size"
  type        = string
}

variable "aks_tag_environment" {
  default     = "Development"
  description = "Name of the tag environment"
  type        = string
}