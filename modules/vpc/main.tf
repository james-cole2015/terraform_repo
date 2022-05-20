resource "aws_vpc" "Tatooine"{
  cidr_block = var.cidr_range
  instance_tenancy = "default"

  tags = var.tags
}

resource "aws_subnet" "Han's Public Subnet " {
  vpc_id = aws_vpc.Tatooine.id

  tags =  var.tags

  cidr_block = var.public_sn[0]
}

resource "aws_subnet" "Han's Private Subnet" {
  vpc_id = aws_vpc.Tatooine.id

  tags =  var.tags

  cidr_block = var.private_sn[0]
}