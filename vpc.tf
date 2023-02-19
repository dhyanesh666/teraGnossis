resource "aws_vpc" "prod-vpc-Gnossis" {
  cidr_block = "11.0.0.0/16"
  tags = {
    Name = "production-Gnossis"
  }
}