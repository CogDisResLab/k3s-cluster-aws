locals {
  vpc_cidr_blocks = concat(
    module.k3s_vpc.private_subnets_cidr_blocks,
    module.k3s_vpc.public_subnets_cidr_blocks
  )
}

resource "random_string" "cluster_token" {
  length           = 48
  special          = true
  numeric          = true
  lower            = true
  upper            = true
  override_special = "^@~*#%/.+:;_"
}
