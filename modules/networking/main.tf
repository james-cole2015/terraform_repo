data "aws_availability_zones" "available" {}

module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  name            = var.vpc_name
  cidr            = var.cidr_block
  azs             = data.aws_availability_zones.available.names
  private_subnets = var.private_sn
  public_subnets  = var.public_sn
  #assign_generated_ipv6_cidr_block = true
  create_database_subnet_group = true
  enable_nat_gateway           = true
  single_nat_gateway           = true


}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "SSH from the internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "JasperSecurityGroup"
  }

}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "allow http traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "http from the internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "JasperSecurityGroup"
  }
}
