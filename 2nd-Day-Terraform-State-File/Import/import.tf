import {
  to = aws_instance.web
  id = "i-0c42c805f2f36116a"
}

resource "aws_instance" "web" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags = {
    "Name" : "import"
  }
}