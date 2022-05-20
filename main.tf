provider "aws" {
  region = "us-east-1"
  
}


module "vpc" {
  source = "./modules/vpc/"
}

module "subnet" {
  source = "./modules/subnet"
}


  module "ec2-instance_example_complete" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 3.0"

    name = var.ec2_name
    ami = var.ubuntu_ami
    subnet_id = module.subnet.Hans_Public_Subnet.id
    instance_type = "t2.micro"

    tags = var.tags
}

