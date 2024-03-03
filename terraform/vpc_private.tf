resource "aws_vpc" "vpc_private" {
  cidr_block       = "172.34.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

   tags = {
    Name = "Private VPC"
  }
}

resource "aws_subnet" "vpc_private_subnet_private_1" {
  vpc_id     = aws_vpc.vpc_private.id
  cidr_block = "172.34.0.0/20"
  availability_zone = var.availability_zone

  tags = {
    Name = "pocdemo-subnet-public1-us-east-1a"
  }
}

resource "aws_route_table" "private_vpc_route_table" {
  vpc_id = aws_vpc.vpc_private.id

  tags = {
    Name = "Private Route table"
  }
}

resource "aws_route_table_association" "vpc_private_subnet_private_1_rtb_association" {
  subnet_id      = aws_subnet.vpc_private_subnet_private_1.id
  route_table_id = aws_route_table.private_vpc_route_table.id
}

resource "aws_subnet" "vpc_private_subnet_private_2" {
  vpc_id     = aws_vpc.vpc_private.id
  cidr_block = "172.34.16.0/20"
  availability_zone = var.availability_zone

  tags = {
    Name = "pocdemo-subnet-public1-us-east-1a"
  }
}

resource "aws_route_table_association" "vpc_private_subnet_private_2_rtb_association" {
  subnet_id      = aws_subnet.vpc_private_subnet_private_2.id
  route_table_id = aws_route_table.private_vpc_route_table.id
}
