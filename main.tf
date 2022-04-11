provider "aws" {
  region = "ap-south-1"
}

variable "vpcname" {
  type = string
  default = "demo"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.50.0.0/16"

  tags = {
    Name = var.vpcname
  }
}
