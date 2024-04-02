resource "aws_route_table" "rtb" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "MyRoute"
  }
}

resource "aws_route_table_association" "rt_ass1" {
  subnet_id      = aws_subnet.public_sub1.id
  route_table_id = aws_route_table.rtb.id
}

resource "aws_route_table_association" "rt_ass2" {
  subnet_id      = aws_subnet.public_sub2.id
  route_table_id = aws_route_table.rtb.id
}
