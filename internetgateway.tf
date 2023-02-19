resource "aws_internet_gateway" "igw-Gnossis" {
  vpc_id = aws_vpc.prod-vpc-Gnossis.id

  tags = {
    Name = "production-igw-Gnossis"
  }
}