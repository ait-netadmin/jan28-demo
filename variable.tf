variable "shared_credentials_file" {}
variable "profile" {}
#variable "vpc_tags" {}

variable "mywork_region" {
  description = "North-Virginia"
  default = "us-east-1"
}

variable "cust_region" {
  description = "Ohio"
  default = "us-east-2"
}

variable env {
  default="work"
}

variable tags {
  type=map
  default={
    customer="Work"
    provisioned_by="AIT"
  }
}
