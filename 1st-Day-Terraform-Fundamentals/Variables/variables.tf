variable "image_id" {
    type = string
    description = "The id of the machine image (AMI) to use for the server."
}


variable "image_id_conditional" {
    type = string
    description = "The id of the machine image (AMI) to use for the server."

    validation {
      condition = length(var.image_id_conditional) > 4 && substr(var.image_id_conditional, 0, 4) == "ami-"
      error_message = "The value it's wrong, the value should begin with ami- and greater than 4."
    }
}