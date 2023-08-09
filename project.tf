#provider.tf

provider "aws"{
region = "ap-south-1"
access_key = "AKIAS26AYTMQH6IAYH4I"
secret_key = "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"
}
 #project.tf

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-demo"
    Purpose = "terrafrom using Jenkins"
  }
}
