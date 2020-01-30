variable cidr_block {
  default="11.0.0.0/16"
}

variable tags {
  type=map
  default={
    Name="sum-ait-vpc-work"
    #Name = "${merge("sum-ait-vpc-","${var.env}")}"
  }
}
