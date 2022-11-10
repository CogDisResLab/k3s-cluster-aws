resource "cloudflare_zone" "cdrlprojects_org" {
  account_id = "8f6419333a38e403bba0e92e5dd92ecd"
  paused     = false
  plan       = "free"
  type       = "full"
  zone       = "cdrlprojects.org"
}

resource "cloudflare_zone" "cdrl_ut_org" {
  account_id = "8f6419333a38e403bba0e92e5dd92ecd"
  paused     = false
  plan       = "free"
  type       = "full"
  zone       = "cdrl-ut.org"
}

resource "cloudflare_zone" "pic_ut_org" {
  account_id = "8f6419333a38e403bba0e92e5dd92ecd"
  paused     = false
  plan       = "free"
  type       = "full"
  zone       = "pic-ut.org"
}

resource "cloudflare_zone" "precisioninformaticscore_org" {
  account_id = "8f6419333a38e403bba0e92e5dd92ecd"
  paused     = false
  plan       = "free"
  type       = "full"
  zone       = "precisioninformaticscore.org"
}
