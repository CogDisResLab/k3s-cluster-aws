output "server_ips" {
  value = module.k3s_control[*].public_ip
}

output "worker_ips" {
  value = module.k3s_worker[*].public_ip
}

output "cluster_token" {
  value = random_string.cluster_token.result
}
