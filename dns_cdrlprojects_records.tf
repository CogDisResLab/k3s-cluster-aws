resource "cloudflare_record" "control_nodes" {
  count = var.control_count

  name    = "control${format("%02d", count.index + 1)}"
  proxied = false
  ttl     = 300
  type    = "A"
  value   = module.k3s_control.public_ip[count.index]
}

resource "cloudflare_record" "worker_nodes" {
  count = var.worker_count

  name    = "worker${format("%02d", count.index + 1)}"
  proxied = false
  ttl     = 300
  type    = "A"
  value   = module.k3s_worker.public_ip[count.index]
}
