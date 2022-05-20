resource "aws_vpc" "Tatooine"{
  cidr_block = var.cidr_range
  instance_tenancy = "default"

  tags = var.tags
}
