variable "vpc_id" {}

variable "tags" {
  type = map
  default = {
    Name = "sum-ait-igw"
  }
}
