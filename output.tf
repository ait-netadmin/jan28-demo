output vpc_cidr_block {
  value="${module.work-vpc.vpc_cidr_block}"
}

output vpc_id {
  value="${module.work-vpc.vpc_id}"
}

output igw_id {
  value = "${module.work-igw.igw_id}"
}

output pub_subnet_id-1 {
  value = "${module.work-pub-subnet.pub-subnet-1_id}"
}

output priv_subnet_id-1 {
  value = "${module.work-priv-subnet.priv-subnet-1_id}"
}

output pub_rtb_id-1 {
  value = "${module.work-pub-rtb.pub-rtb-1_id}"
}

output pub-rtb-1-assc-1 {
  value = "${module.work-pub-rtb-assc.pub-rtb-1-assc-1_id}"
}
