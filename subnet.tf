resource "aws_subnet" "subnet-1-Gnossis" {
  vpc_id            = aws_vpc.prod-vpc-Gnossis.id
  cidr_block        = "11.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "prod-subnet-Gnossis"
  }
}