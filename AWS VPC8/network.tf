resource "aws_vpc" "my_vpc" {
  count      = length(var.network.cidr_block)
  cidr_block = var.network.cidr_block[count.index]
  tags = {
    "Name" = var.network.cidr_block_tags[count.index]
  }
}

resource "aws_subnet" "subnet1" {
  count             = length(var.network.subnet_azs)
  vpc_id            = aws_vpc.my_vpc[0].id
  cidr_block        = cidrsubnet(var.network.cidr_block[0], 8, count.index)
  availability_zone = var.network.subnet_azs[count.index]
  tags = {
    "Name" = var.network.subnet_name_tags1[count.index]
  }
}
resource "aws_subnet" "subnet2" {
  count             = length(var.network.subnet_azs)
  vpc_id            = aws_vpc.my_vpc[1].id
  cidr_block        = cidrsubnet(var.network.cidr_block[1], 8, count.index)
  availability_zone = var.network.subnet_azs[count.index]
  tags = {
    "Name" = var.network.subnet_name_tags2[count.index]
  }
}