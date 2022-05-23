provider "aws" {
  region = "us-east-1"
  
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.cidr_range

  azs             = var.azs
  private_subnets = var.private_sn[0]
  public_subnets  = var.public_sn[0]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.tags
}

/*module "subnet" {
  source = "./modules/subnet"
}*/


  module "ec2-instance_example_complete" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 3.0"

    name = var.ec2_name
    ami = var.ubuntu_ami
    subnet_id = module.vpc.aws_subnet.Hans_Public_Subnet.id
    instance_type = "t2.micro"

    tags = var.tags
}

