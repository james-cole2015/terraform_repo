resource "aws_vpc" "Tatooine"{
  cidr_block = var.cidr_range
  instance_tenancy = "default"

  tags = var.tags
}
resource "aws_subnet" "Hans_Public_Subnet" {
  vpc_id = module.vpc.id

  tags =  var.tags

  cidr_block = var.public_sn[0]
}

resource "aws_subnet" "Hans_Private_Subnet" {
  vpc_id = module.vpc.id

  tags =  var.tags

  cidr_block = var.private_sn[0]
}