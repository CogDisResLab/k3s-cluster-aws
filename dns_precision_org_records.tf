resource "cloudflare_record" "github_domain_verification_precision_org" {
  name    = "_github-challenge-cogdisreslab"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "d7e1c3babc"
  zone_id = "07697b3718e57de5440ee095bccd6ba4"
}
