resource "aws_network_interface" "nic-Gnossis" {
  subnet_id       = aws_subnet.subnet-1-Gnossis.id
  private_ips     = ["11.0.1.50"]
  security_groups = [aws_security_group.sg-Gnossis.id]

}
resource "aws_network_interface" "nic-Gnossis-1" {
  subnet_id       = aws_subnet.subnet-1-Gnossis.id
  private_ips     = ["11.0.1.55"]
  security_groups = [aws_security_group.sg-Gnossis.id]

}