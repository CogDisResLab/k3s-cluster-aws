resource "cloudflare_record" "top_level_A_record_1" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "A"
  value   = "185.199.110.153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_A_record_2" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "A"
  value   = "185.199.111.153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_A_record_3" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "A"
  value   = "185.199.109.153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_A_record_4" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "A"
  value   = "185.199.108.153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_AAAA_record_1" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "AAAA"
  value   = "2606:50c0:8001::153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "terraform_managed_resource_116ced876b3e969104dd4b841d5c4ef1" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "AAAA"
  value   = "2606:50c0:8003::153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_AAAA_record_2" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "AAAA"
  value   = "2606:50c0:8000::153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_AAAA_record_3" {
  name    = "cdrl-ut.org"
  proxied = true
  ttl     = 300
  type    = "AAAA"
  value   = "2606:50c0:8002::153"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "anonaddy_domainkey_record_1" {
  name    = "dk1._domainkey"
  proxied = false
  ttl     = 300
  type    = "CNAME"
  value   = "dk1._domainkey.anonaddy.me"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "anonaddy_domainkey_record_2" {
  name    = "dk2._domainkey"
  proxied = false
  ttl     = 300
  type    = "CNAME"
  value   = "dk2._domainkey.anonaddy.me"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "subdomain_www_CNAME" {
  name    = "www"
  proxied = true
  ttl     = 300
  type    = "CNAME"
  value   = "cogdisreslab.github.io"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_MX_record_1" {
  name     = "cdrl-ut.org"
  priority = 20
  proxied  = false
  ttl      = 300
  type     = "MX"
  value    = "mail2.anonaddy.me"
  zone_id  = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "top_level_MX_record_2" {
  name     = "cdrl-ut.org"
  priority = 10
  proxied  = false
  ttl      = 300
  type     = "MX"
  value    = "mail.anonaddy.me"
  zone_id  = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "anonaddy_SPF_record" {
  name    = "cdrl-ut.org"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "v=spf1 include:spf.anonaddy.me -all"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "anonaddy_verification_record" {
  name    = "cdrl-ut.org"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "aa-verify=0a06db425771a57fc2a87be9c941ee9a417e1f24"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}

resource "cloudflare_record" "anonaddy_DMARC_record" {
  name    = "_dmarc"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "v=DMARC1; p=quarantine; adkim=s"
  zone_id = "b9204dd3771c67eae376f45752d6a23c"
}
