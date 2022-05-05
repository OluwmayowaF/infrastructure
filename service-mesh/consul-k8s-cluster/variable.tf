variable "consul_cacert_file" {
  default     = "./certs/consul-agent-ca.pem" 
  description = "Primary DC CA cert file"
  type        = string
}

variable "consul_cakey_file" {
  default     = "./certs/consul-agent-ca-key.pem" 
  description = "Primary DC CA key file"
  type        = string
}

variable "consul_replication_token" {
  default     = "fd806d03-1fc8-5365-6d33-24b97b387010" 
  description = "Replication token from Primary cluster for ACL"
  type        = string
}

variable "consul_gossip_encryption_key" {
   default     = "gG3MjJ0uKnP7qiy+PsEDtbzSh4PQNDQr7xrGX4Ep2Yg=" 
   description = "Gossip encryption token from Primary cluster"
   type        = string
}




