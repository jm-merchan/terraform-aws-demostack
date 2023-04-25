terraform {
  cloud {
    organization = "emea-se-playground-2019"

    workspaces {
      name = "Jose-AWS-Demostack"
    }
  }
}