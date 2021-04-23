# Define Terraform provider
terraform {
  required_version = ">= 0.12"
}


# Configure the Azure provider
provider "azurerm" {
  environment = "public"
  features {}
}

module "webapp" {
  source = "./modules/webapp"
  location    = "canadacentral"
  company     = "amindev"
  environment = "dev"
  owner       = "Amin Niktash"
  description = "Linux App Service with .NET Core"
  region      = "ne"
  app_name    = "azapp01"

  }