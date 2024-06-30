module "EC2" {
  source = "./instances"
  name = "Terraform Project"
  environment = "prd"
  ami = "ami-0b6278baa6691172d"
  ami_db = "ami-0e001c9271cf7f3b9"
}