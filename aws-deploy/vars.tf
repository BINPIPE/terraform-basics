variable "ami" {
  type = map(string)

  default = {
    "eu-west-1" = "ami-25488752"
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "eu-west-1"
}
