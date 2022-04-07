terraform {
  cloud {
    organization = "insight"

    workspaces {
      name = "cdktf-typescript-module"
    }
  }
}