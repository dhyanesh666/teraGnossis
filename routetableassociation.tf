resource "aws_route_table_association" "asociation" {
  subnet_id      = aws_subnet.subnet-1-Gnossis.id
  route_table_id = aws_route_table.prod-route-table-Gnossis.id
}