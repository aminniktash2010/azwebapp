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

  bucket_name = "mynewapp"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
