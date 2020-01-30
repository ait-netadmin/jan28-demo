resource "aws_subnet" "sum-ait-pub-subnet-1" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.pub_cidr_block-1}"
  map_public_ip_on_launch = "true"
  tags = "${var.tags}"
}
