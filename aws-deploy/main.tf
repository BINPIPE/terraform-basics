provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "web" {

  ami           = "lookup(var.ami,var.aws_region)"
  instance_type = "var.instance_type"
  vpc_security_group_ids = ["aws_security_group.web.id"]
  user_data              = file("template/user_data.sh")
  instance_count         = "var.instance_count"

 # tags {
 #   Name = "hello-world-web"
 # }
}

resource "aws_security_group" "web" {
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
