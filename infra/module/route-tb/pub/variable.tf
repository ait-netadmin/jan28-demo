variable "vpc_id" {}
variable "igw_id" {}

variable "tags" {
  type = map
  default = {
    Name = "sum-ait-pub-rtb-1"
  }
}

variable "pub_route_cidr_block-1" {
  default = "0.0.0.0/0"
}
