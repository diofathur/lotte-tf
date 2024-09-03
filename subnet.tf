resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet[0]
  availability_zone = var.az[0]
  tags = {
    Name = "${local.name}-public-subnet"
  }
}


resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet[2]
  availability_zone = var.az[0]
  tags = {
    Name = "${local.name}-private-subnet"
  }
}
