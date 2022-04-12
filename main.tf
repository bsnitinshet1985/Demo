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

output "vpc_arn" {
  value       = aws_vpc.myvpc.arn
  description = "The arn of this VPC"
  sensitive   = true
}

output "vpc_id" {
  value       = aws_vpc.myvpc.id
  description = "The id of this VPC"
  sensitive   = false
}

output "vpc_mrt" {
  value       = aws_vpc.myvpc.main_route_table_id
  description = "The main_route_table_id  of this VPC"
  sensitive   = true
}

output "owner_id"{
  value       = aws_vpc.myvpc.owner_id
  description = "The owner_id  of this VPC"
  sensitive   = false
}
