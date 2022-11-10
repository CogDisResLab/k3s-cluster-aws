terraform {
  cloud {
    organization = "CogDisResLab"

    workspaces {
      name = "k3s-cluster"
    }
  }
}
