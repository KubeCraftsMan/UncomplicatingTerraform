variable "name" {
  type        = string
  description = "Name of instance"
}

variable "environment" {
    type = string
    description = "Envrionment where should be created our instance"
    default = "dev"
}

variable "ami" {
  type = string
  description = "New ami"
}

variable "ami_db" {
  type = string
  description = "New ami"
}