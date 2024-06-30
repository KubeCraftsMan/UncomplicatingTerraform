module "EC2" {
  source = "./instances"
  name = "Terraform Project"
  environment = "prd"
}