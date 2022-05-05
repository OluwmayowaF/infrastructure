# CONSUL KUBERNETES SECONDARY CLUSTER 

This terraform module configures a kubernetes cluster using the helm values file in the `./helm` folder. 
Update the Variables.tf file with the primary cluster credentials and add the TLS certs into a `./certs` folder. 


## Input Variables 
 1. consul_cacert_file
 2. consul_cakey_file
 3. consul_replication_token
 4. consul_gossip_encryption_key
