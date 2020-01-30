resource "aws_route_table_association" "sum-ait-pub-rtb-1-assc" {
  subnet_id = "${var.pub-subnet-1_id}"
  route_table_id = "${var.pub_route_table_id}"
}
