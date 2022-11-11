data "cloudflare_zone" "cdrlprojects_org" {
  account_id = var.cloudflare_account_id
  name       = "cdrlprojects.org"
}

data "cloudflare_zone" "cdrl_ut_org" {
  account_id = var.cloudflare_account_id
  name       = "cdrl-ut.org"
}

data "cloudflare_zone" "pic_ut_org" {
  account_id = var.cloudflare_account_id
  name       = "pic-ut.org"
}

data "cloudflare_zone" "precisioninformaticscore_org" {
  account_id = var.cloudflare_account_id
  name       = "precisioninformaticscore.org"
}
