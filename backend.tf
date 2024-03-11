terraform {
  cloud {
    organization = "fem-eci-training"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}
