variable "vpc_id" {}

variable "tags" {
  type = map
  default = {
    Name = "sum-ait-pub-subnet-1"
  }
}

variable "pub_cidr_block-1" {
  default = "11.0.10.0/24"
}
