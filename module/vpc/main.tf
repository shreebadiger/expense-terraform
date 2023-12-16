resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = merge(var.tags, {Name = var.env})
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet)
  vpc_id     = aws_vpc.main.id
  availability_zone = var.azs_subnet[count.index]
  cidr_block = var.public_subnet[count.index]
  tags = merge(var.tags, {Name = "public-subnet"})
}

resource "aws_subnet" "web" {
  count = length(var.web_subnet)
  vpc_id     = aws_vpc.main.id
  availability_zone = var.azs_subnet[count.index]
  cidr_block = var.web_subnet[count.index]
  tags = merge(var.tags, {Name = "web-subnet"})
}

resource "aws_subnet" "app" {
  count = length(var.app_subnet)
  vpc_id     = aws_vpc.main.id
  availability_zone = var.azs_subnet[count.index]
  cidr_block = var.app_subnet[count.index]
  tags = merge(var.tags, {Name = "app-subnet"})
}

resource "aws_subnet" "db" {
  count = length(var.db_subnet)
  vpc_id     = aws_vpc.main.id
  availability_zone = var.azs_subnet[count.index]
  cidr_block = var.db_subnet[count.index]
  tags = merge(var.tags, {Name = "db-subnet"})
}