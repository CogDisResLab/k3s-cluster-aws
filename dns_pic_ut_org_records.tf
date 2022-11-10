resource "cloudflare_record" "github_domain_verification_pic_ut_org" {
  name    = "_github-challenge-cogdisreslab"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "78c6ba5172"
  zone_id = "2cfe8542b7815694d63204da1484263a"
}
