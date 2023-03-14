# create a vpc
resource "aws_vpc" "ntiervpc" {
  cidr_block = var.network.cidr_block
  tags = {
    "Name" = "ntier"
  }
}

resource "aws_subnet" "subnets" {
  count             = length(var.network.subnet_cidrs)
  cidr_block        = var.network.subnet_cidrs[count.index]
  vpc_id            = aws_vpc.ntiervpc.id
  availability_zone = var.network.subnet_azs[count.index]
  tags = {
    "Name" = var.network.subnet_name_tags[count.index]
  }
  depends_on = [
    aws_vpc.ntiervpc
  ]
}