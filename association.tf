# associating public route table
resource "aws_route_table_association" "rt_pb" {
  subnet_id      = aws_subnet.dev_pub_sub.id
  route_table_id = aws_route_table.dev_pub_rt.id
}
