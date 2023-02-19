resource "aws_eip" "one" {
  vpc                       = true
  network_interface         = aws_network_interface.nic-Gnossis.id
  associate_with_private_ip = "11.0.1.50"
  depends_on                = [aws_internet_gateway.igw-Gnossis,aws_instance.web-server-instance-1-Gnossis]
}

resource "aws_eip" "two" {
  vpc                       = true
  network_interface         = aws_network_interface.nic-Gnossis-1.id
  associate_with_private_ip = "11.0.1.55"
  depends_on                = [aws_internet_gateway.igw-Gnossis,aws_instance.web-server-instance-2-Gnossis]
}