resource "cloudflare_record" "control_nodes" {
  count = var.control_count

  name    = "control${format("%02d", count.index + 1)}"
  proxied = false
  ttl     = 300
  type    = "A"
  value   = module.k3s_control[count.index].public_ip
  zone_id = data.cloudflare_zone.cdrlprojects_org.id
}

resource "cloudflare_record" "worker_nodes" {
  count = var.worker_count

  name    = "worker${format("%02d", count.index + 1)}"
  proxied = false
  ttl     = 300
  type    = "A"
  value   = module.k3s_worker[count.index].public_ip
  zone_id = data.cloudflare_zone.cdrlprojects_org.id
}
