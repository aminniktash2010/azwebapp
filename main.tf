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
//--------------------------------------------------------------------
// Modules
module "demo" {
  source  = "app.terraform.io/nik1/demo/webapp"
  version = "1.0.2"

  app_name = "webapp1"
  company = "nik"
  description = "test webbapp"
  environment = "dev"
  owner = "amin"
}

//--------------------------------------------------------------------
// Modules
module "nginx" {
  source  = "app.terraform.io/nik1/nginx/module"
  version = "1.1.7"

  company = "nik"
  description = "nginx"
  environment = "dev"
  network-vnet-cidr = "10.10.0.0/16"
  nginx_admin_password = "Password123!"
  nginx_admin_username = "amin"
  nginx_vm_size = "Standard_B2s"
  owner = "Amin Niktash"
  prefix = "AZ"
  vm-subnet-cidr = "10.10.1.0/24"
}
//---------------------------------------------------
// Modules
module "sql" {
  source  = "app.terraform.io/nik1/sql/module"
  version = "1.0.5"
  # insert required variables here
  sql_server_name         = "amin-sqlsrv01"
  sql_database_name       = "parsa-sql"
  sql_admin_login         = "nima"
  sql_admin_password      = "@Aa123456789!"

}

//---------------------------------------------------
// Modules
module "loadbalancer" {
  source  = "app.terraform.io/nik1/loadbalancer/module"
  version = "1.0.2"
}
