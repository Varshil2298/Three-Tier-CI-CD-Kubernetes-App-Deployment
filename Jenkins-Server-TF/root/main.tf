provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "remote-state-terraform-resources"
    key    = "ec2/ec2.tfstate"
    region = "ap-south-1"
  }
}

data "aws_vpc" "default" {
  default = true
}

module "ec2_instances" {
 source = "../modules/EC2"
 instance_type = var.instance_type
 ingress_ports = var.ingress_ports
 vpc_id               = data.aws_vpc.default.id
 allowed_cidr_blocks = var.allowed_cidr_blocks
 key_name = var.key_name
 ami = var.ami
}