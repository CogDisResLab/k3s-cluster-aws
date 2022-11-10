resource "cloudflare_zone" "cdrlprojects_org" {
  paused = false
  plan   = "free"
  type   = "full"
  zone   = "cdrlprojects.org"
}

resource "cloudflare_zone" "cdrl_ut_org" {
  paused = false
  plan   = "free"
  type   = "full"
  zone   = "cdrl-ut.org"
}

resource "cloudflare_zone" "pic_urt_org" {
  paused = false
  plan   = "free"
  type   = "full"
  zone   = "pic-ut.org"
}

resource "cloudflare_zone" "precisioninformaticscore_org" {
  paused = false
  plan   = "free"
  type   = "full"
  zone   = "precisioninformaticscore.org"
}
