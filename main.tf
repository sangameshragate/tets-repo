resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  assign_generated_ipv6_cidr_block = true
}
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "subnet1"
  }
}
resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "igw1"
  }
}
resource "aws_egress_only_internet_gateway" "egw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "egw1"
  }
}
