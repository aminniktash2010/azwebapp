terraform {
  backend "remote" {
    organization = "nik1"
    
    workspaces {
      name = "azure01"
    }
  }
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "test1" {
  name     = "test1"
  location = "canadacentral"
}
