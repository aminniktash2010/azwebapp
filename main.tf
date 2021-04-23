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