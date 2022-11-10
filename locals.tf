locals {
  vpc_cidr_blocks = concat(
    module.k3s_vpc.private_subnets_cidr_blocks,
    module.k3s_vpc.public_subnets_cidr_blocks
  )

  #  k3os_release_link = "https://github.com/rancher/k3os/releases/download/v0.22.2-k3s2r0/k3os-arm64.iso"
}

resource "random_string" "cluster_token" {
  length           = 48
  special          = true
  numeric          = true
  lower            = true
  upper            = true
  override_special = "^@~*#%/.+:;_"
}
