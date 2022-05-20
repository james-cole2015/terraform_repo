module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.cidr_range

  azs             = var.azs
  private_subnets = var.private_sn
  public_subnets  = var.public_sn

  enable_nat_gateway = var.nat_gateway
  enable_vpn_gateway = true

  tags = var.tags


  module "ec2-instance_example_complete" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 3.0"

    name = var.ec2_name
    ami = 
    subnet_id = 

    tags = var.tags
}