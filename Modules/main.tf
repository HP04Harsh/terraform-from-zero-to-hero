module "prod-rg" {
  source   = "F:/Terraform_Learn/Modules/modules"
  rg_name     = "production-rg"
  rg_loc = "westus"
}
module "stage-rg" {
  source   = "F:/Terraform_Learn/Modules/modules"
  rg_name     = "staging-rg"
  rg_loc = "westus"
}