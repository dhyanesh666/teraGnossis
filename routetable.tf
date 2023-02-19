resource "aws_route_table" "prod-route-table-Gnossis" {
  vpc_id = aws_vpc.prod-vpc-Gnossis.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-Gnossis.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.igw-Gnossis.id
  }

  tags = {
    Name = "Prod-Gnossis"
  }
}