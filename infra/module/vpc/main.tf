resource "aws_vpc" "sum-ait-vpc" {
  #cidr_block = "${module.work-vpc.var.cidr_block}"
  cidr_block = "${var.cidr_block}"
  enable_dns_hostnames = "true"
  #tags = "${var.module_tags}"
  #tags = "${merge("${var.tags}","${module.work-vpc.var.tags}")}"
  tags = "${var.tags}"
  #tags = "${merge("${output.proj_tags}","${var.module_tags}")}"
  #tags = "${var.module_tags}"
}
