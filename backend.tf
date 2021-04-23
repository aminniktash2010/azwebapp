terraform {
  backend "remote" {
    organization = "nik1"
    
    workspaces {
      name = "azure01"
    }
  }
}
