resource "aws_internet_gateway" "sum-ait-igw" {
  vpc_id = "${var.vpc_id}"

  tags = "${var.tags}"
}
