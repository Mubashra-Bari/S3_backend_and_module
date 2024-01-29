provider "aws" {}

#creating module for VPC

module "my_vpc" {
  source    = "../vpc-module"
  vpc_cidr  = "10.0.0.0/16"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t3.micro"
  subnet_id     = module.my_vpc.subnet_id

  tags = {
    Name = "my-instance"
  }
}
