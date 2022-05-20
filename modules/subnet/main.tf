resource "aws_subnet" "Hans_Public_Subnet" {
  vpc_id = aws_vpc.Tatooine.id

  tags =  var.tags

  cidr_block = var.public_sn[0]
}

resource "aws_subnet" "Hans_Private_Subnet" {
  vpc_id = aws_vpc.Tatooine.id

  tags =  var.tags

  cidr_block = var.private_sn[0]
}
