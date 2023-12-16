resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = merge(var.tags, {Name = var.env})
}

resource "aws_subnet" "main" {
  count = length(var.public_subnet)
  vpc_id     = aws_vpc.main.id
  availability_zone = var.azs_subnet[count.index]
  cidr_block = var.public_subnet[count.index]
  tags = merge(var.tags, {Name = "public-subnet"})

}