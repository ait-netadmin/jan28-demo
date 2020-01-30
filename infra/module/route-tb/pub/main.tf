# Creating Public Route Table
resource "aws_route_table" "sum-ait-pub-rtb-1" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "${var.pub_route_cidr_block-1}"
    gateway_id = "${var.igw_id}"
  }

tags = "${var.tags}"
}
