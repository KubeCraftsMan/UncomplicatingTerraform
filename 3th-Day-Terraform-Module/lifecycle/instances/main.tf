data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name = var.name
    Environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
    ignore_changes = [ tags, ]
    replace_triggered_by = [ aws_instance.db.id ]
  }
}

resource "aws_instance" "db" {
  ami           = var.ami_db
  instance_type = "t3.micro"

  tags = {
    Name = var.name
    Environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
  }
}