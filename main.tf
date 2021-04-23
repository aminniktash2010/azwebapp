# Define Terraform provider
terraform {
  required_version = ">= 0.12"
}


# Configure the Azure provider
provider "azurerm" {
  environment = "public"
  version     = ">= 2.15.0"
  features {}
}}

module "webapp" {
  source = "./modules/webapp"

  bucket_name = "mynewapp"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}}
