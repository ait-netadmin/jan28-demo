output vpc_cidr_block {
  value="${aws_vpc.sum-ait-vpc.cidr_block}"
}

output vpc_id {
  value = "${aws_vpc.sum-ait-vpc.id}"
}

output "vpc_tags" {
  value = "${var.tags}"
}
